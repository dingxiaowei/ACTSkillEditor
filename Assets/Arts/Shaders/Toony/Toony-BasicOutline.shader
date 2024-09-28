// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Toon/Basic Outline" {

	Properties
	{
		_Scale("Scale",float) = 1
		_Alpha("Alpha", range(0,1)) = 1
		_Brightness("brightness",range(0,10)) = 1
		_MainColor("MainColor", Color) = (1, 1, 1, 1)
		_OutlineColor("Outline Color", Color) = (0,0,0,1)
		_Outline("Outline width", Range(.000, 0.03)) = .005
		_RGBCutOutPass("RGBCutOutPass",Range(1,3)) = 1
		_RGBCutOut("RGBCutOut (RGB)", 2D) = "white" {}
		_MainTex("Base (RGB)", 2D) = "white" { }
		_NormalMap("Normalmap",2D) = "white"{}
		_ToonShade("ToonShader", 2D) = "white" { }
		_ToonShadeAdd("ToonShaderAdd", 2D) = "white" { }
		_ToonShadeAddTwo("ToonShaderAddTwo(RGB)", 2D) = "white"{}
		_MaskTex("Mask (RGB)", 2D) = "white" {}
	}

	SubShader
	{
		Tags{ "Queue" = "Transparent" "RenderType" = "Opaque" }
	
		Pass
		{
			Name "OUTLINE"
			Tags{ "LightMode" = "Always" }
			Cull Front
			ZWrite On
			Blend SrcAlpha OneMinusSrcAlpha

			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag	
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			sampler2D _MainTex;
			sampler2D _RGBCutOut;
			float4 _MainTex_ST;
			float _Alpha;
			float _RGBCutOutPass;
			uniform float _Outline;
			uniform float4 _OutlineColor;

			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				fixed4 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 pos : POSITION;
				float2 uv : TEXCOORD0;
				fixed4 color : COLOR;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				float3 norm = mul((float3x3)UNITY_MATRIX_IT_MV, v.normal);
				float2 offset = TransformViewToProjection(norm.xy);

				o.pos.xy += offset * _Outline;
				o.color = _OutlineColor;
				o.color.a = _Alpha;
				return o;
			}

			half4 frag(v2f i) :COLOR
			{
				fixed4 rgbCutoutColor = tex2D(_RGBCutOut, i.uv);
				if (_RGBCutOutPass == 1 && rgbCutoutColor.r < 0.5f)
				{
					i.color.a = 0;
					discard;
				}
				else if (_RGBCutOutPass == 2 && rgbCutoutColor.g < 0.5f)
				{
					i.color.a = 0;
					discard;
				}
				else if (_RGBCutOutPass == 3 && rgbCutoutColor.b < 0.5f)
				{
					i.color.a = 0;
					discard;
				}
				return i.color;
			}
			ENDCG
		}
		UsePass "Toon/Basic/BASE"
		UsePass "Toon/Shadows/SHADOWCAST"
	}
	Fallback "Diffuse"
	//CustomEditor "ToonyShaderInspector"
}