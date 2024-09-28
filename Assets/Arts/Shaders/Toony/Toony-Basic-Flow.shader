// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Toon/BasicFlow" {
	Properties {
		_Speed ("Flow Speed", Float) = 1.0
		_FlowDir ("Flow Direction", Vector) = (1,1,0,0)
		_Color ("Main Color", Color) = (.5,.5,.5,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_ToonShade ("ToonShader Cubemap(RGB)", CUBE) = "" { Texgen CubeNormal }
	}


	SubShader {
		//Tags { "RenderType"="Opaque" }
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
		Pass {
			Name "BaseFlow"
            //Cull Off //Remove this
            Blend SrcAlpha OneMinusSrcAlpha //Add This
			
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma fragmentoption ARB_precision_hint_fastest 

			#include "UnityCG.cginc"

			sampler2D _MainTex;
			samplerCUBE _ToonShade;
			float4 _MainTex_ST;
			float4 _Color;
			float _Speed;
			float2 _FlowDir;

			struct appdata {
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
				float3 normal : NORMAL;
			};
			
			struct v2f {
				float4 pos : POSITION;
				float2 texcoord : TEXCOORD0;
				float3 cubenormal : TEXCOORD1;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos (v.vertex);
				o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
				o.cubenormal = mul (UNITY_MATRIX_MV, float4(v.normal,0));
				return o;
			}

			float4 frag (v2f i) : COLOR
			{
			    float2 texcoord = i.texcoord + _Time * _Speed * _FlowDir;
				float4 col = _Color * tex2D(_MainTex, texcoord);
				float4 cube = texCUBE(_ToonShade, i.cubenormal);
				return float4(2.0f * cube.rgb * col.rgb, col.a);
			}
			ENDCG			
		}
	} 

	SubShader {
		//Tags { "RenderType"="Opaque" }
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
		Pass {
			Name "BASE"
            //Cull Off //Remove this
            Blend SrcAlpha OneMinusSrcAlpha //Add This
			SetTexture [_MainTex] {
				constantColor [_Color]
				Combine texture * constant
			} 
			SetTexture [_ToonShade] {
				combine texture * previous DOUBLE, previous
			}
		}
	} 
	
	Fallback "VertexLit"
}
