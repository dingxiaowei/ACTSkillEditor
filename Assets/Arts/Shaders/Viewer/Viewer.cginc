// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

#include "UnityCG.cginc"
//base common define

uniform float _Contrast;
uniform float _Saturation;
uniform float _Brightness;

uniform float _BloomHigh;
uniform float _Threshold;
uniform float _Intensity;
uniform float _EnableToneMapping;
uniform int _ToneMappingMode;
uniform float _Exposure;

uniform	sampler2D _MainTex;
uniform	sampler2D _BloomTex;
uniform	float4 _BloomColor;
uniform float4 _MainTex_ST;
uniform float4 _MainTex_TexelSize;
uniform float4 _BloomTex_TexelSize;
sampler2D _CameraDepthTexture;
sampler2D _BloomDepthTextire;
uniform int _BlurSize;

struct appdata
{
	float4 vertex : POSITION;
	float2 uv : TEXCOORD0;
};

struct v2f
{
	float2 uv : TEXCOORD0;
	float4 vertex : SV_POSITION;
};

struct v2f_blur 
{
	float4 pos : SV_POSITION;
	half2 uv: TEXCOORD0;
	half2 uv1: TEXCOORD1;
	half2 uv2: TEXCOORD2;
	half2 uv3: TEXCOORD3;
	half2 uv4: TEXCOORD4;
};

//common function

float4 ToneMapping_SimpleReinhard(float4 input_color,float exposure)
{
	float lum = Luminance(input_color.rgb); 
	float lumTm = lum * exposure;
	float scale = lumTm / (1+lumTm);  
	return float4(input_color.rgb * scale / lum, input_color.a);
}

float4 ToneMapping_OptimizedHejiDawson(float4 input_color,float exposure) 
{
	input_color *= exposure;
	float4 X = max(float4(0.0,0.0,0.0,0.0), input_color-0.004);
	float4 retColor = (X*(6.2*X+.5))/(X*(6.2*X+1.7)+0.06);
	return retColor*retColor;
}		

float4 ToneMapping_Photographic(float4 input_color,float exposure)
{
	return 1-exp2(-exposure * input_color);
}

float GetBlurGauss(int radius,int x,int y)
{
	float sigma = (float)radius;
    float sigma2 = 2.0 * sigma * sigma;
    float sigmap = sigma2 * 3.1415926;
    float weight = exp(-(float)(x * x + y * y) / sigma2) / sigmap;
    return weight;
}

half4 GetToneCurve(half3 rgbAver,half4 col)
{
	half sum= rgbAver.r + rgbAver.g + rgbAver.b;
	half rAver = sum/(3.0*rgbAver.r);
	half gAver = sum/(3.0*rgbAver.g);
	half bAver = sum/(3.0*rgbAver.b);
	half3 rgb = col.rgb * half3(rAver,gAver,bAver);
	return half4(rgb,col.a); 
}

half GetHDRExplode(half light,float explose)
{
    return exp(light * explose);
}

half GetHDRExplode2(half3 col)
{
	half lum = (min(col.r,min(col.g,col.b)) + max(col.r,max(col.g,col.b)))*0.5f;
    half final =lum-0.5f;
    return exp(-(final*final)/1.0f);
}

half GetHDRExplode3(half3 col,half3 normal)
{
		half lumCol = (min(col.r,min(col.g,col.b)) + max(col.r,max(col.g,col.b)))*0.5f;
		half lumNormal = (min(normal.r,min(normal.g,normal.b)) + max(normal.r,max(normal.g,normal.b)))*0.5f;
		half final=lumNormal-lumCol;
		return exp(-(final*final)/1.0f);
}

//vert function
v2f vertBase (appdata v)
{
	v2f o;
	o.vertex = UnityObjectToClipPos(v.vertex);
	#if UNITY_UV_STARTS_AT_TOP
    if (_MainTex_TexelSize.y < 0) {
	    // Texture is inverted WRT the main texture
    	    v.uv.y = 1.0 - v.uv.y;
    }
    #endif  
	o.uv = v.uv;
	return o;
}
		
v2f_blur vertBlurH(appdata v) {
    v2f_blur o;
    o.pos = UnityObjectToClipPos(v.vertex);
	#if UNITY_UV_STARTS_AT_TOP
    if (_MainTex_TexelSize.y < 0) {
	    // Texture is inverted WRT the main texture
    	    v.uv.y = 1.0 - v.uv.y;
    }
    #endif   
    o.uv = UnityStereoScreenSpaceUVAdjust(v.uv, _MainTex_ST);
	half2 inc = half2(_MainTex_TexelSize.x * 1.3846153846, 0);	
#if UNITY_SINGLE_PASS_STEREO
	inc.x *= 2.0;
#endif
    o.uv1 = UnityStereoScreenSpaceUVAdjust(v.uv - inc, _MainTex_ST);	
    o.uv2 = UnityStereoScreenSpaceUVAdjust(v.uv + inc, _MainTex_ST);	
	half2 inc2 = half2(_MainTex_TexelSize.x * 3.2307692308, 0);	
#if UNITY_SINGLE_PASS_STEREO
	inc2.x *= 2.0;
#endif
	o.uv3 = UnityStereoScreenSpaceUVAdjust(v.uv - inc2, _MainTex_ST);
    o.uv4 = UnityStereoScreenSpaceUVAdjust(v.uv + inc2, _MainTex_ST);	
	return o;
}	
	
v2f_blur vertBlurV(appdata v) {
    v2f_blur o;
    o.pos = UnityObjectToClipPos(v.vertex);
	#if UNITY_UV_STARTS_AT_TOP
    if (_MainTex_TexelSize.y < 0) {
	    // Texture is inverted WRT the main texture
    	v.uv.y = 1.0 - v.uv.y;
    }
    #endif   
    o.uv = UnityStereoScreenSpaceUVAdjust(v.uv, _MainTex_ST);
    half2 inc = half2(0, _MainTex_TexelSize.y * 1.3846153846);	
    o.uv1 = UnityStereoScreenSpaceUVAdjust(v.uv - inc, _MainTex_ST);	
    o.uv2 = UnityStereoScreenSpaceUVAdjust(v.uv + inc, _MainTex_ST);	
    half2 inc2 = half2(0, _MainTex_TexelSize.y * 3.2307692308);	
    o.uv3 = UnityStereoScreenSpaceUVAdjust(v.uv - inc2, _MainTex_ST);	
    o.uv4 = UnityStereoScreenSpaceUVAdjust(v.uv + inc2, _MainTex_ST);	
    return o;
}

//frag function
fixed4 fragBase (v2f i) : SV_Target
{
	fixed4 col = tex2D(_MainTex, i.uv);
	fixed3 finalColor = col.rgb;
	#if ENABLE_BASE  
    //brigtness
    finalColor = col * _Brightness;  
    //saturation
    fixed gray = Luminance(col.rgb);
    fixed3 grayColor = fixed3(gray, gray, gray);  
    finalColor = lerp(grayColor, finalColor, _Saturation);  
    //contrast
    fixed3 avgColor = fixed3(0.5, 0.5, 0.5);    
    finalColor = lerp(avgColor, finalColor, _Contrast);
    #endif
				 
    return fixed4(finalColor, col.a); 
}

half4 fragBrightness (v2f i) : SV_Target
{
	half2 uv = i.uv;			
	half4 col= tex2D(_MainTex, i.uv);	
		
	half depth = Linear01Depth(UNITY_SAMPLE_DEPTH(tex2D(_CameraDepthTexture, i.uv)));

	half depthBloom = Linear01Depth(UNITY_SAMPLE_DEPTH(tex2D(_BloomDepthTextire, i.uv)));
	col.rgb*= (depth>depthBloom - 0.01);

	col.a = Luminance(col.rgb);
	col.rgb = max(col.rgb - _Threshold, 0);  		 
	
	return col;
}

half4 fragBlur (v2f_blur i): SV_Target 
{
	half4 pixel = tex2D(_MainTex, i.uv) * 0.2270270270
				+ (tex2D(_MainTex, i.uv1) + tex2D(_MainTex, i.uv2)) * 0.3162162162
				+ (tex2D(_MainTex, i.uv3) + tex2D(_MainTex, i.uv4)) * 0.0702702703;
   	return pixel;
}

half4 fragComposite(v2f i) : SV_Target
{
	half2 uv = i.uv;
	half4 col =tex2D(_MainTex, i.uv);
	half4 bloom = tex2D(_BloomTex, i.uv)*_BloomColor*_Intensity;
	half4 normal_color =  col + bloom;
	return normal_color;
}


	

