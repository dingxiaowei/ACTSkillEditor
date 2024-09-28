// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "AE_Effect/Particle_Blend_HS"
{
	Properties
	{
		_TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
		_MainTex ("Particle Texture", 2D) = "white" {}
		[HideInInspector]_InvFade ("Soft Particles Factor", Range(0.01,3.0)) = 1.0

		_Hue ("Hue (色相)", Range(0,359)) = 0
		_Saturation ("Saturation (饱和度)", Range(0,3.0)) = 1.0
	}
	SubShader
	{
		Tags 
		{ 
			"Queue"="Transparent" 
			"IgnoreProjector"="True" 
			"RenderType"="Transparent" 
		}
		Blend SrcAlpha OneMinusSrcAlpha
		ColorMask RGB
		Cull Off 
		Lighting Off 
		ZWrite Off

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_particles
			#pragma multi_compile_fog
			#pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
			#include "UnityCG.cginc"

			sampler2D _MainTex;
			float4 _MainTex_ST;
			fixed4 _TintColor;
			half _Hue;
        	half _Saturation;
        	sampler2D_float _CameraDepthTexture;
			float _InvFade;

			float3 rgb_to_hsv(float3 RGB)
       		{
				float3 HSV;
				float minChannel, maxChannel;
				if (RGB.x > RGB.y) 
				{
					maxChannel = RGB.x;
					minChannel = RGB.y;
				}
				else 
				{
					maxChannel = RGB.y;
					minChannel = RGB.x;
				}
				if (RGB.z > maxChannel) 
				{
					maxChannel = RGB.z;
				}
				if (RGB.z < minChannel) 
				{
					minChannel = RGB.z;
				}
				HSV.xy = 0;
				HSV.z = maxChannel;
				float delta = maxChannel - minChannel;
				if (delta != 0) 
				{
					HSV.y = delta / HSV.z;
					if( RGB.x == HSV.z )
					{
						HSV.x = (RGB.y - RGB.z) / delta;
					}
					else if( RGB.y == HSV.z )
					{ 
						HSV.x = 2 + (RGB.z - RGB.x) / delta;
					}
					else if( RGB.z == HSV.z )
					{
						HSV.x = 4 + (RGB.x - RGB.y) / delta;
					}
					HSV.x = HSV.x * 60 + 360;
				}
				return (HSV);
       		}

       		float3 hsv_to_rgb(float3 HSV)
       		{
				float3 RGB = HSV.z;

				float var_h = HSV.x /60;
				float var_i = floor(var_h);
				float var_1 = HSV.z * (1.0 - HSV.y);
				float var_2 = HSV.z * (1.0 - HSV.y * (var_h-var_i));
				float var_3 = HSV.z * (1.0 - HSV.y * (1-(var_h-var_i)));
				if(var_i == 0) 
				{ 
					RGB = float3(HSV.z, var_3, var_1); 
				}
				else if(var_i == 1) 
				{ 
					RGB = float3(var_2, HSV.z, var_1); 
				}
				else if(var_i == 2) 
				{ 
					RGB = float3(var_1, HSV.z, var_3); 
				}
				else if(var_i == 3) 
				{ 
					RGB = float3(var_1, var_2, HSV.z); 
				}
				else if(var_i == 4) 
				{
				 	RGB = float3(var_3, var_1, HSV.z); 
				}
				else
				{ 
					RGB = float3(HSV.z, var_1, var_2); 
				}
				return (RGB);
       		}

			struct appdata_t
			{
				float4 vertex : POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f 
			{
				float4 vertex : SV_POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				#ifdef SOFTPARTICLES_ON
				float4 projPos : TEXCOORD2;
				#endif
			};
			
			v2f vert (appdata_t v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				#ifdef SOFTPARTICLES_ON
				o.projPos = ComputeScreenPos (o.vertex);
				COMPUTE_EYEDEPTH(o.projPos.z);
				#endif
				o.color = v.color;
				o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				#ifdef SOFTPARTICLES_ON
				float sceneZ = LinearEyeDepth (SAMPLE_DEPTH_TEXTURE_PROJ(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)));
				float partZ = i.projPos.z;
				float fade = saturate (_InvFade * (sceneZ-partZ));
				i.color.a *= fade;
				#endif

				fixed4 original = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord);
				fixed3 RGB = fixed3(original.r, original.g, original.b);
				float3 HSV = rgb_to_hsv(RGB);
				HSV.x += _Hue; 							//调整偏移Hue值
            	HSV.x = HSV.x % 360.0f;    				//超过360的值从0开始
            	HSV.y *= _Saturation;  					//调整饱和度
            	RGB = hsv_to_rgb(HSV);
            	fixed4 output = fixed4(RGB.rgb, original.a);
            	UNITY_APPLY_FOG_COLOR(i.fogCoord, output, fixed4(0,0,0,0)); // fog towards black due to our blend mode
				return output;
			}
			ENDCG
		}
	}
}
