Shader "Devil/Shader_Character"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_Color ("Main Color", Color) = (1,1,1,1)
	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }

		Pass
		{
			Lighting Off
			AlphaTest Off
			Cull Off
			
			Fog{ Mode Off }

			Color [_Color]
			SetTexture [_MainTex]{ combine texture * primary double }
		}
	}
	FallBack Off
}