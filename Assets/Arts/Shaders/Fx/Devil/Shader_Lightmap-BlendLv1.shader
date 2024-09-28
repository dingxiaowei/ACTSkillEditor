
Shader "Devil/Shader_Lightmap-BlendLv1"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_BlendTex1 ("BlendMap (RGBA)", 2D) = "black" {}
		_MainTex1 ("BlendTexA (R)", 2D) = "black" {}
		_MainTex ("MainTexE", 2D) = "" {}
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
			Bind "texcoord1", texcoord3
			Bind "texcoord1", texcoord4
		}
		
		Pass
		{
			Lighting Off
			AlphaTest Off

			Fog{ Mode Off }

			Color [_Color]
			SetTexture [_MainTex]{ combine texture * primary }
			SetTexture [_BlendTex1]{ combine previous, texture }
			SetTexture [_MainTex1]{ combine texture lerp (previous) previous }
			SetTexture [_LightMapBright]{ combine texture * previous double }
			SetTexture [_LightMap]{ combine texture * previous }
		}
	}
}
