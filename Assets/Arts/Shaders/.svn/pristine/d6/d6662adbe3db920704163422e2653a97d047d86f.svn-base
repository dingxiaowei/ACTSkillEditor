Shader "Devil/Shader_SolidColor-Alpha"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
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
		}
	}
}
