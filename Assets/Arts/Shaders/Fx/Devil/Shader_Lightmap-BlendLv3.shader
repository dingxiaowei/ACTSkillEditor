
Shader "Devil/Shader_Lightmap-BlendLv2"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_BlendTex1 ("BlendMap (RGBA)", 2D) = "black" {}
		_MainTex1 ("BlendTex", 2D) = "black" {}
		_BlendTex2 ("BlendMap (RGBA)", 2D) = "black" {}
		_MainTex2 ("BlendTex", 2D) = "black" {}
		_MainTex ("MainTex", 2D) = "" {}
		_LightMapBright ("Bright (RGB)", 2D) = "white" {}
		_LightMap ("Lightmap (RGB)", 2D) = "white" {}
	}

	SubShader
	{
		//Tags { "Queue" = "Transparent" }
		Tags { "RenderType"="Opaque" }

		BindChannels
		{
			Bind "vertex", vertex
			Bind "texcoord", texcoord0
			Bind "texcoord", texcoord1
			Bind "texcoord", texcoord2
			Bind "texcoord", texcoord3
			Bind "texcoord", texcoord4
			Bind "texcoord1", texcoord5
			Bind "texcoord1", texcoord6
		}
		
		Pass
		{
			Lighting Off
			AlphaTest Off

			Fog{ Mode Off }

			Color [_Color]
			SetTexture [_MainTex]{ combine texture * primary }
			SetTexture [_BlendTex2]{ combine previous, texture }
			SetTexture [_MainTex2]{ combine texture lerp (previous) previous }
			SetTexture [_BlendTex1]{ combine previous, texture }
			SetTexture [_MainTex1]{ combine texture lerp (previous) previous }
			SetTexture [_LightMapBright]{ combine texture * previous double }
			SetTexture [_LightMap]{ combine texture * previous }
		}
	}
}

/*
Shader "Devil/Shader_Terrain-Lightmap-Blend"
{
	Properties {
		_Color ("Main Color", Color) = (1,1,1,1)
		_BlendTex1 ("Blend1 (RGBA)", 2D) = "black" {}
		_MainTex1 ("TexA (R)", 2D) = "black" {}
		_BlendTex2 ("Blend2 (RGBA)", 2D) = "black" {}
		_MainTex2 ("TexF (G)", 2D) = "black" {}
		_BlendTex3 ("Blend3 (RGBA)", 2D) = "black" {}
		_MainTex3 ("TexD (B)", 2D) = "black" {}
		_MainTex ("MainTexE", 2D) = "white" {}
		_LightMap ("Lightmap (RGB)", 2D) = "white" {}
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
			SetTexture [_MainTex] { Combine texture * primary DOUBLE, texture * primary }
			//SetTexture [_MainTex]{ combine texture * primary }
			//SetTexture [_BlendTex3]{ combine previous, texture }
			//SetTexture [_MainTex3]{ combine texture lerp (previous) previous }
			//SetTexture [_BlendTex2]{ combine previous, texture }
			//SetTexture [_MainTex2]{ combine texture lerp (previous) previous }
			//SetTexture [_BlendTex1]{ combine previous, texture }
			//SetTexture [_MainTex1]{ combine texture lerp (previous) previous }
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
			
			SetTexture [_LightMap] {
				//matrix [unity_LightmapMatrix]
				combine texture
			}
			SetTexture [_MainTex] { Combine texture * primary DOUBLE, texture * primary }
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
			
			SetTexture [_LightMap] {
				//matrix [unity_LightmapMatrix]
				combine texture * texture alpha DOUBLE
			}
			SetTexture [_MainTex] { combine texture * previous QUAD, texture * primary }
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
			SetTexture [_MainTex] { Combine texture * primary DOUBLE, texture * primary }
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
			SetTexture [_MainTex] { combine texture }
		}
	}

}
*/

/*
Shader "Devil/Shader_Terrain-Lightmap-Blend"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_BlendTex ("BlendMap (RGB)", 2D) = "black" {}
		_MainTex1 ("BlendTexA (R)", 2D) = "black" {}
		_MainTex2 ("BlendTexF (G)", 2D) = "black" {}
		_MainTex3 ("BlendTexD (B)", 2D) = "black" {}
		_MainTex ("BaseE (RGB)", 2D) = "white" {}
		_LightMap ("LightMap (RGBA)", 2D) = "black" {}
	}

	SubShader
	{
		LOD 300
		Tags { "Queue" = "Transparent" }
		
		CGPROGRAM
		#pragma surface surf Lambert
		
		struct Input
		{
			float2 uv_BlendTex;
			float2 uv_MainTex1;
			float2 uv_MainTex2;
			float2 uv_MainTex3;
			float2 uv_MainTex;
			float2 uv2_LightMap;
		};
		
		sampler2D _BlendTex;
		sampler2D _MainTex1;
		sampler2D _MainTex2;
		sampler2D _MainTex3;
		sampler2D _MainTex;
		sampler2D _LightMap;
		float4 _Color; // fixed4 ÒÑÆúÓÃ
		
		void surf (Input IN, inout SurfaceOutput o)
		{
			float4 bt = tex2D(_BlendTex, IN.uv_BlendTex);
			float4 m1 = tex2D(_MainTex1, IN.uv_MainTex1);
			float4 m2 = tex2D(_MainTex2, IN.uv_MainTex2);
			float4 m3 = tex2D(_MainTex3, IN.uv_MainTex3);
			float4 m = tex2D(_MainTex, IN.uv_MainTex);
			float4 lm = tex2D(_LightMap, IN.uv2_LightMap);
			
			// blend
			m.rgb = lerp(m.rgb, m3.rgb, bt.b);
			m.rgb = lerp(m.rgb, m2.rgb, bt.g);
			m.rgb = lerp(m.rgb, m1.rgb, bt.r);
			m.rgb = lerp(m.rgb, lm.rgb, lm.a);
			o.Albedo = m.rgb;
			
			// color
			o.Albedo *= _Color;
			
			// lightmap
			o.Emission = o.Albedo * lm.rgb;
		}
		
		ENDCG
	}
}
*/