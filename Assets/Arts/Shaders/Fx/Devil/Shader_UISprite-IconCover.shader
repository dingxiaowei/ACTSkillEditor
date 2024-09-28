
Shader "Devil/Shader_UISprite-IconCover"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_Color ("Main Color", Color) = (0, 0, 0, 0)
	}

	SubShader
	{
		Tags { "Queue" = "Transparent+7" }

		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha

			Cull Off
			Lighting Off
			ZWrite Off
			ZTest Always
			AlphaTest Off

			Fog
			{
				Mode Off
			}

			Color [_Color]
			SetTexture [_MainTex]{ combine texture lerp (previous) previous }
		}
	}
}

