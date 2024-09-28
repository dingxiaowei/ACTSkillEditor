
Shader "Devil/Shader_Lightmap-Gray"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_MainTex ("MainTex", 2D) = "" {}
		_LightMapBright ("Bright (RGB)", 2D) = "white" {}
		_LightMap ("Lightmap (RGBA)", 2D) = "white" {}
	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
		
		Pass
		{
			Lighting Off
			AlphaTest Off

			Fog{ Mode Off }
			
			BindChannels
			{
				Bind "vertex", vertex
				Bind "texcoord", texcoord0
				Bind "texcoord1", texcoord1
				Bind "texcoord1", texcoord2
			}

			Color [_Color]
			SetTexture [_MainTex] { combine texture * primary }
			SetTexture [_LightMapBright] { combine texture * previous double }
			SetTexture [_LightMap] { combine texture * previous }
		}
	}
}


/*
Shader "Devil/Shader_Terrain-Lightmap"
{
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}

	// ---- Dual texture cards
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 100
		
		// Non-lightmapped
		Pass {
			Tags { "LightMode" = "Vertex" }
			
			Material {
				Diffuse (1,1,1,1)
				Ambient (1,1,1,1)
			} 
			Lighting On
			SetTexture [_MainTex] {
				Combine texture * primary DOUBLE, texture * primary
			} 
		}
		
		// Lightmapped, encoded as dLDR
		Pass {
			Tags { "LightMode" = "VertexLM" }
			
			BindChannels {
				Bind "Vertex", vertex
				Bind "normal", normal
				Bind "texcoord1", texcoord0 // lightmap uses 2nd uv
				Bind "texcoord", texcoord1 // main uses 1st uv
			}
			
			SetTexture [unity_Lightmap] {
				matrix [unity_LightmapMatrix]
				combine texture
			}
			SetTexture [_MainTex] {
				combine texture * previous DOUBLE, texture * primary
			}
		}
		
		// Lightmapped, encoded as RGBM
		Pass {
			Tags { "LightMode" = "VertexLMRGBM" }
			
			BindChannels {
				Bind "Vertex", vertex
				Bind "normal", normal
				Bind "texcoord1", texcoord0 // lightmap uses 2nd uv
				Bind "texcoord", texcoord1 // main uses 1st uv
			}
			
			SetTexture [unity_Lightmap] {
				matrix [unity_LightmapMatrix]
				combine texture * texture alpha DOUBLE
			}
			SetTexture [_MainTex] {
				combine texture * previous QUAD, texture * primary
			}
		}	
	}

	// ---- Single texture cards (requires 2 passes for lightmapped)
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 100

		// Non-lightmapped
		Pass {
			Tags { "LightMode" = "Vertex" }
			
			Material {
				Diffuse (1,1,1,1)
				Ambient (1,1,1,1)
			} 
			Lighting On
			SetTexture [_MainTex] {
				Combine texture * primary DOUBLE, texture * primary
			} 
		}	
		// Lightmapped, encoded as dLDR
		Pass {
			// 1st pass - sample Ligltmap
			Tags { "LightMode" = "VertexLM" }

			BindChannels {
				Bind "Vertex", vertex
				Bind "texcoord1", texcoord0 // lightmap uses 2nd uv
			}		
			SetTexture [unity_Lightmap] {
				matrix [unity_LightmapMatrix]
				combine texture
			}
		}
		Pass {
			// 2nd pass - multiply with _MainTex
			Tags { "LightMode" = "VertexLM" }
			ZWrite Off
			Fog {Mode Off}
			Blend DstColor Zero
			SetTexture [_MainTex] {
				combine texture
			}
		}
	}

}
*/


/*
Shader "Devil/Shader_Terrain-Lightmap"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_MainTex ("MainTex", 2D) = "" {}
		_LightMap ("Lightmap (RGBA)", 2D) = "black" {}
	}

	SubShader
	{
		Lighting Off
		
		LOD 300
		Tags { "Queue" = "Transparent" }
		
		CGPROGRAM
		#pragma surface surf Lambert
		
		struct Input
		{
			float2 uv_MainTex;
			float2 uv2_LightMap;
		};
		
		sampler2D _MainTex;
		sampler2D _LightMap;
		float4 _Color;
		
		void surf (Input IN, inout SurfaceOutput o)
		{
			float4 m = tex2D(_MainTex, IN.uv_MainTex);
			float4 lm = tex2D(_LightMap, IN.uv2_LightMap);
			
			o.Albedo = lerp(m.rgb, lm.rgb, lm.a);
			
			// color
			o.Albedo *= _Color;
			
			// lightmap
			o.Emission = o.Albedo * lm.rgb;
		}
		
		ENDCG
	}
}
*/