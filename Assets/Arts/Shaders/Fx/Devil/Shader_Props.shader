Shader "Devil/Shader_Props"
{
	Properties
	{
		_Color ("Main Color", Color) = (1,1,1,1)
		_MainTex ("MainTex", 2D) = "" {}
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
			SetTexture [_MainTex]{ combine texture * primary double}
		}
	}
}


/*
Shader "Devil/Shader_Props-Lightmap"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_LightMap ("Lightmap (RGB)", 2D) = "white" {}
	}

	SubShader
	{
		LOD 300
		Tags { "RenderType" = "Opaque" }
		
		CGPROGRAM
		#pragma surface surf Lambert

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
			
			// lightmap
			o.Emission = o.Albedo * lm.rgb;
		}
		
		ENDCG
	}
}
*/
