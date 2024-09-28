Shader "Devil/Shader_SolidColor"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
		
		Pass
		{
			Lighting Off
			AlphaTest Off

			Fog{ Mode Off }

			Color [_Color]
		}
	}
}
