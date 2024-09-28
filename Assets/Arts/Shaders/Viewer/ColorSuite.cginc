
    #include "UnityCG.cginc"
    
    sampler2D _MainTex;
    float2 _MainTex_TexelSize;
    sampler2D _Curves;
    float _Saturation;
    float4 _Balance;

	int _ToneMappingMode;
	float _Exposure;

#if COLORSPACE_LINEAR

    // Color space conversion between sRGB and linear space.
    // http://chilliant.blogspot.com/2012/08/srgb-approximations-for-hlsl.html

    float3 srgb_to_linear(float3 c)
    {
        return c * (c * (c * 0.305306011 + 0.682171111) + 0.012522878);
    }

    float3 linear_to_srgb(float3 c)
    {
        return max(1.055 * pow(c, 0.416666667) - 0.055, 0.0);
    }

#endif

#if BALANCING_ON

    // Color space conversion between linear RGB and LMS
    // based on the CIECAM02 model (CAT02).
    // http://en.wikipedia.org/wiki/LMS_color_space#CAT02

    float3 lrgb_to_lms(float3 c)
    {
        float3x3 m = {
            3.90405e-1f, 5.49941e-1f, 8.92632e-3f,
            7.08416e-2f, 9.63172e-1f, 1.35775e-3f,
            2.31082e-2f, 1.28021e-1f, 9.36245e-1f
        };
        return mul(m, c);
    }

    float3 lms_to_lrgb(float3 c)
    {
        float3x3 m = {
             2.85847e+0f, -1.62879e+0f, -2.48910e-2f,
            -2.10182e-1f,  1.15820e+0f,  3.24281e-4f,
            -4.18120e-2f, -1.18169e-1f,  1.06867e+0f
        };
        return mul(m, c);
    }

    // Color balance function.
    // - The gamma compression/expansion equation used in this function
    //   differs from the standard sRGB-Linear conversion.

    float3 apply_balance(float3 c)
    {
#if !COLORSPACE_LINEAR
        // Do the gamma expansion before applying the color balance.
        c = pow(c, 2.2);
#endif

        // Apply the color balance in the LMS color space.
        c = lms_to_lrgb(lrgb_to_lms(c) * _Balance);

        // It may return a minus value, which should be cropped out.
        c = max(c, 0.0);

#if !COLORSPACE_LINEAR
        // Gamma compression.
        c = pow(c, 1.0 / 2.2);
#endif

        return c;
    }

#endif

#if TONEMAPPING_ON

    // John Hable's filmic tone mapping operator.
    // http://filmicgames.com/archives/6

    float3 hable_op(float3 c)
    {
        float A = 0.15;
        float B = 0.50;
        float C = 0.10;
        float D = 0.20;
        float E = 0.02;
        float F = 0.30;
        return ((c * (c * A + B * C) + D * E) / (c * (c * A + B) + D * F)) - E / F;
    }

    float3 tone_mapping(float3 c)
    {
        c *= _Exposure * 4;
        c = hable_op(c) / hable_op(11.2);
        return pow(c, 1 / 2.2);
    }

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

#endif

    // Color saturation.

    float luma(float3 c)
    {
        return 0.212 * c.r + 0.701 * c.g + 0.087 * c.b;
    }

    float3 apply_saturation(float3 c)
    {
        return lerp((float3)luma(c), c, _Saturation);
    }

    // RGB curves.

    float3 apply_curves(float3 c)
    {
        float4 r = tex2D(_Curves, float2(c.r, 0));
        float4 g = tex2D(_Curves, float2(c.g, 0));
        float4 b = tex2D(_Curves, float2(c.b, 0));
        return float3(r.r * r.a, g.g * g.a, b.b * b.a);
    }

#if DITHER_ORDERED

    // Interleaved gradient function from CoD AW.
    // http://www.iryoku.com/next-generation-post-processing-in-call-of-duty-advanced-warfare

    float interleaved_gradient(float2 uv)
    {
        float3 magic = float3(0.06711056, 0.00583715, 52.9829189);
        return frac(magic.z * frac(dot(uv, magic.xy)));
    }

    float3 dither(float2 uv)
    {
        return (float3)(interleaved_gradient(uv / _MainTex_TexelSize) / 255);
    }

#endif

#if DITHER_TRIANGULAR

    // Triangular PDF.

    float nrand(float2 uv)
    {
        return frac(sin(dot(uv, float2(12.9898, 78.233))) * 43758.5453);
    }

    float3 dither(float2 uv)
    {
        float r = nrand(uv) + nrand(uv + (float2)1.1) - 0.5;
        return (float3)(r / 255);
    }

#endif

    float4 frag(v2f_img i) : SV_Target 
    {
        float4 source = tex2D(_MainTex, i.uv); 

#if BALANCING_ON
        float3 rgb = source.rgb;
        rgb = apply_balance(rgb);
		source.rgb=rgb;
#endif
		
#if TONEMAPPING_ON
		if(_ToneMappingMode==0)
		{
			return ToneMapping_SimpleReinhard(source,_Exposure);
		}
		else if(_ToneMappingMode==1)
		{
			return ToneMapping_Photographic(source,_Exposure);
		}
		else
		{
			return ToneMapping_Photographic(source,_Exposure);
		}

#endif

        // RGB curves.
        //rgb = apply_curves(rgb);

//#if !DITHER_OFF
//        rgb += dither(i.uv);
//#endif

//#if COLORSPACE_LINEAR
//        // Take the color back into the linear color space.
//        rgb = srgb_to_linear(rgb);
//#endif

        return source;
    }

