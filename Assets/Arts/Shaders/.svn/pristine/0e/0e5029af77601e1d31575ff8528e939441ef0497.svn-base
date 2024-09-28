// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Toon/Basic"
{
	Properties
	{
		_Scale("Scale",float) = 1
		_Alpha("Alpha", range(0,1)) = 1
		_Brightness("brightness",range(0,10)) = 1
		_MainColor("MainColor", Color) = (1, 1, 1, 1)
		_RGBCutOutPass("RGBCutOutPass",Range(1,3)) = 1
		_RGBCutOut("RGBCutOut (RGB)", 2D) = "white" {}
		_MainTex("Base (RGB)", 2D) = "white" {}
		_NormalMap("Normalmap",2D) = "white"{}
		_ToonShade("ToonShader(RGB)", 2D) = "white"{}
		_ToonShadeAdd("ToonShaderAdd(RGB)", 2D) = "white"{}
		_ToonShadeAddTwo("ToonShaderAddTwo(RGB)", 2D) = "white"{}
		_MaskTex("Mask (RGB)", 2D) = "white" {}

	}

	SubShader
	{
		Tags { "Queue" = "Transparent" "RenderType" = "Opaque"}
		Pass {
			Name "BASE"
			Blend SrcAlpha OneMinusSrcAlpha //Add This
			Tags {"LightMode" = "ForwardBase"}
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"

			#pragma fragmentoption ARB_precision_hint_fastest 
			#pragma multi_compile_fwdbase nolightmap nodirlightmap nodynlightmap novertexlight

			sampler2D _MainTex;
			sampler2D _MaskTex;
			sampler2D _RGBCutOut;
			sampler2D _NormalMap;
			sampler2D _ToonShade;
			sampler2D _ToonShadeAdd;
			sampler2D _ToonShadeAddTwo;
			float4 _MainTex_ST;
			//float4 _Color;
			float4 _MainColor;
			float _Brightness;
			float _Alpha;
			float _RGBCutOutPass;
			float _Scale;
			struct appdata
			{
				float4 vertex : POSITION;
				fixed3 normal : NORMAL;
				fixed4 tangent : TANGENT;
				fixed4 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 pos : POSITION;
				float2 uv : TEXCOORD0;
				float3 viewDir : TEXCOORD1;
				float3 TtoV0 : TEXCOORD2;
				float3 TtoV1 : TEXCOORD3;
				//fixed3 diff : COLOR0;
				//fixed3 ambient : COLOR1;
				//SHADOW_COORDS(4)
			};

			v2f vert(appdata v)
			{
				v2f o;
				TANGENT_SPACE_ROTATION;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				o.viewDir = mul(rotation, ObjSpaceViewDir(v.vertex));

				o.TtoV0 = mul(rotation, UNITY_MATRIX_IT_MV[0].xyz);
				o.TtoV1 = mul(rotation, UNITY_MATRIX_IT_MV[1].xyz);


			
				
	/*			half3 worldNormal = UnityObjectToWorldNormal(v.normal);
				half nl = max(0, dot(worldNormal, _WorldSpaceLightPos0.xyz));
				o.diff = nl * _LightColor0.rgb;
				o.ambient = _LightColor0.rgb;*/

				
				//TRANSFER_SHADOW(o)
				UNITY_TRANSFER_FOG(o, o.pos);
				//TRANSFER_VERTEX_TO_FRAGMENT(o);
				return o;
			}

			float4 frag(v2f i) : SV_Target
			{

				//采样
				fixed4 texColor = tex2D(_MainTex, i.uv);
				fixed4 rgbCutoutColor = tex2D(_RGBCutOut, i.uv);


				if (_RGBCutOutPass == 1 && rgbCutoutColor.r < 0.5f)
				{
					texColor.a = 0;
					discard;
				}
				else if (_RGBCutOutPass == 2 && rgbCutoutColor.g < 0.5f)
				{
					texColor.a = 0;
					discard;
				}
				else if (_RGBCutOutPass == 3 && rgbCutoutColor.b < 0.5f)
				{
					texColor.a = 0;
					discard;
				}

				fixed3 norm = UnpackNormal(tex2D(_NormalMap, i.uv));
				half2 vn;

				vn.x = dot(i.TtoV0,norm) / _Scale;
				vn.y = dot(i.TtoV1,norm) / _Scale;
				vn = vn * 0.5f + 0.5f;
				float4 cube = tex2D(_ToonShade, vn);
				float4 cubeAdd = tex2D(_ToonShadeAdd, vn);
				float4 cubeAddTwo = tex2D(_ToonShadeAddTwo, vn);
				float4 colMask = tex2D(_MaskTex, i.uv);

				float3 max1 = cube.rgb;
				float3 max2 = cubeAdd.rgb;
				float3 max3 = cubeAddTwo.rgb;
				float3 min = float3(1,1,1);
				cube.rgb = lerp(min, max1 * 2, colMask.r);
				cubeAdd.rgb = lerp(min, max2 * 2, colMask.g);
				cubeAddTwo.rgb = lerp(min, max3 * 2, colMask.b);


				//法线
				//fixed3 diffuse = _Color.rgb * saturate(dot(normalize(norm),  normalize(cube.rgb))) * 2;

				fixed4 fragColor;
				fragColor.rgb = float3(texColor*cube.rgb*cubeAdd.rgb*cubeAddTwo*_Brightness);

				//fixed shadow = SHADOW_ATTENUATION(i);
				////shadow = shadow > 1 ? 1 : shadow;
				//fragColor.rgb *= shadow+i.ambient;

		/*		float3 shadowColor = float3(0.1,0.1,0.1);
				float attenuation = saturate(3.0*LIGHT_ATTENUATION(i)-1.0);
				fragColor.rgb = lerp(shadowColor, fragColor.rgb, attenuation);*/

				fragColor.rgb = _MainColor.rgb * fragColor.rgb;
				fragColor.a = _Alpha;
				return fragColor;
			}
			ENDCG
			}
		UsePass "Toon/Shadows/SHADOWCAST"
	}
		Fallback "Diffuse"
		//CustomEditor "ToonyShaderInspector"
}
