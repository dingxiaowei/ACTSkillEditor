// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

//作者 朱云"翔"
//作用 角色身上部分纹理闪光
Shader "Triniti/Character/2COL_2TEX_AB"
{
	Properties
	{
		_MainColor ("Main Color", Color) = (1,1,1,1)
		_MainTex ("MainTex(RGB)", 2D) = "" {}
		_SkinColor ("Skin Color", Color) = (1,1,1,1)
		_SkinTex ("SkinTex(RGB)", 2D) = "" {}
	}

	SubShader
	{
		Pass
		{
			Tags { "Queue" = "Transparent" }

			BindChannels
			{
				Bind "Vertex", vertex
				Bind "texcoord", texcoord
			}
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
					#pragma vertex vert
					#pragma fragment frag
               
					#pragma fragmentoption ARB_fog_exp2
					#pragma fragmentoption ARB_precision_hint_fastest
               
					#include "UnityCG.cginc"
               
					uniform sampler2D _MainTex;
					uniform sampler2D _SkinTex;
					uniform float4 _MainTex_ST;
					uniform float4 _SkinTex_ST;
					uniform float4 _MainColor;
					uniform float4 _SkinColor;
               
					struct v2f
					{
						float4 pos : SV_POSITION;
						float2 texcoord0 : TEXCOORD0;
						float2 texcoord1 : TEXCOORD1;
					};

					v2f vert(appdata_base v)
					{
						v2f o;

						o.pos = UnityObjectToClipPos (v.vertex);
						o.texcoord0 = TRANSFORM_TEX(v.texcoord, _MainTex);
						o.texcoord1 = TRANSFORM_TEX(v.texcoord, _SkinTex);
						return o;
					}
              
					float4 frag(v2f i) : COLOR
					{
						float4 color1 = tex2D(_MainTex, i.texcoord0) * _MainColor;
						float4 color2 = tex2D(_SkinTex, i.texcoord1) * _SkinColor;
						return color1 * color2 * 4 * color1.a * color2.a + color1;
					}
			ENDCG
		}
	}
}

