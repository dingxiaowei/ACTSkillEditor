
Shader "Devil/Shader_Particle-ZL-Alpha"
{
	Properties {
		_TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
		_MainTex ("Particle Texture", 2D) = "white" {}
	}

	Category {
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
		Blend SrcAlpha OneMinusSrcAlpha
		Cull Off Lighting Off ZWrite Off ZTest Always Fog { Color (0,0,0,0) }
		
		BindChannels {
			Bind "Color", color
			Bind "Vertex", vertex
			Bind "TexCoord", texcoord
		}
		
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
			
			SetTexture [_MainTex] { combine texture * primary }
		}
	}
*/
}

