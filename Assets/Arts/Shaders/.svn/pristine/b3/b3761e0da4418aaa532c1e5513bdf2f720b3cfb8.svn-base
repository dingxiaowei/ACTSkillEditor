
Shader "Devil/Shader_Particle-ZL-AlphaBlended"
{
	Properties {
		_TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
		_MainTex ("Particle Texture", 2D) = "white" {}
	}

	Category {
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
		Blend SrcAlpha OneMinusSrcAlpha
		AlphaTest Greater .01
		ColorMask RGB
		Cull Off Lighting Off ZWrite Off ZTest Always Fog { Color (0,0,0,0) }
		
		BindChannels {
			Bind "Color", color
			Bind "Vertex", vertex
			Bind "TexCoord", texcoord
		}
		
		// ---- Dual texture cards
		SubShader {
			Pass {
				SetTexture [_MainTex] {
					constantColor [_TintColor]
					combine constant * primary
				}
				SetTexture [_MainTex] {
					combine texture * previous DOUBLE
				}
			}
		}
		
		// ---- Single texture cards (does not do color tint)
		SubShader {
			Pass {
				SetTexture [_MainTex] {
					combine texture * primary
				}
			}
		}
	}


/*
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
	}

	SubShader
	{
		Tags { "Queue" = "Transparent+1" }

		BindChannels
		{
			Bind "Vertex", vertex
			Bind "TexCoord", texcoord
			Bind "Color", color
		}
		
		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			
			Lighting Off
			Cull Off
			ZWrite Off
			//ZTest Always
			AlphaTest Off
			
			SetTexture [_MainTex] { combine texture * primary }
			SetTexture [_MainTex] { combine texture * previous DOUBLE }
		}
	}
*/
}


/*
Shader "Devil/Liquid" {

	Properties {
		_A ("A", Color) = (0,0,0,0)
		_B ("B", Color) = (0,0,0,0)
	}
	
	SubShader {
		Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
		
		CGPROGRAM
		#pragma surface surf SimpleLambert alpha

		half4 LightingSimpleLambert (SurfaceOutput s, half3 lightDir, half atten) {
			half4 c;
			c.rgb = s.Albedo;
			return c;
		}
		  
		float4 _A;
		float4 _B;
			  
		struct Input {
			float4 color : COLOR;
			float3 viewDir;
			float4 screenPos;
			};
			  
		void surf (Input IN, inout SurfaceOutput o) {
		  
			float3 snipeDir = (_A - _B).xyz;
			normalize(snipeDir);
			float3 snipePos = _B.xyz;
			
			float3 cameraDir = IN.viewDir;
			normalize(cameraDir);
			float3 cameraPos = _WorldSpaceCameraPos;
			
			float3 c = cross(snipeDir, cameraDir);
			normalize(c);
			
			float3 points = snipePos - cameraPos;
			
			float distance = dot(c, points);
			distance = abs(distance);


			o.Albedo = half3(1, 0, 0.2);

			if (distance <= 30.0) {
				o.Alpha = 1.0;
				o.Emission = half3(1, 0, 0.2);
			}
			else {
				o.Alpha = 3000.0 / (distance*distance);
				o.Emission = 1000*half3(1, 0, 0.2) / (distance*distance);
			}
		}
	
		ENDCG
    }
    Fallback Off
}
*/

