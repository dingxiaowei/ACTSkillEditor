Shader "Devil/Shader_Weapon"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_Color ("Main Color", Color) = (1,1,1,1)
	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
		//Tags { "Queue"="Transparent" }

		Pass
		{
			//ZWrite Off
			//ZTest Always
			
			Offset 0,1500

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