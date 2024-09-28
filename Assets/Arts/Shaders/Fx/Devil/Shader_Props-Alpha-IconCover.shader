
Shader "Devil/Shader_Props-Alpha-IconCover"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_Color ("Main Color", Color) = (0, 0, 0, 0)
	}

	SubShader
	{
		Tags { "Queue" = "Transparent+1" }

		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha
			
			Lighting Off
			AlphaTest Off

			Fog{ Mode Off }

			Color [_Color]
			SetTexture [_MainTex]{ combine previous, texture }
			SetTexture [_MainTex]{ combine texture lerp (primary) previous } // √……´
			//SetTexture [_MainTex]{ combine texture lerp (texture) previous } // √Ë±ﬂ
		}
	}

}

