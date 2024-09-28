Shader "Devil/Shader_Fonts-Alpha-2S"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_MainTex ("MainTex", 2D) = "" {}
	}

	SubShader
	{
		Tags { "Queue" = "Transparent+1" }

		Pass
		{
			Blend SrcAlpha OneMinusSrcAlpha

			Lighting Off
			AlphaTest Off
			Cull Off

			Fog{ Mode Off }

			Color [_Color]
			SetTexture [_MainTex] { combine texture * primary, texture * primary }
		}
	}
}

/*
Shader "Devil/Shader-Props-Lightmap-Alpha"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_LightMap ("Lightmap (RGB)", 2D) = "white" {}
	}

	SubShader
	{
		LOD 300
		Tags { "Queue" = "Transparent+1" }
		
		CGPROGRAM
		#pragma surface surf Lambert alpha

		struct Input
		{
			float2 uv_MainTex;
			float2 uv2_LightMap;
		};
		
		sampler2D _MainTex;
		sampler2D _LightMap;
		
		void surf (Input IN, inout SurfaceOutput o)
		{
			float4 m = tex2D(_MainTex, IN.uv_MainTex);
			float4 lm = tex2D(_LightMap, IN.uv2_LightMap);
			
			o.Albedo = m.rgb;
			o.Alpha = m.a;
			
			// lightmap
			o.Emission = o.Albedo * lm.rgb;
		}
		
		ENDCG
	}
}
*/