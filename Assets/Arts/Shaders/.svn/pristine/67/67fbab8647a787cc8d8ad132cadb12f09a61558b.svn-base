
Shader "Devil/Shader_UISprite"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_Color ("Main Color", Color) = (1,1,1,1)
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
			SetTexture [_MainTex]
			{
				combine texture * primary
			}
		}
	}
}

