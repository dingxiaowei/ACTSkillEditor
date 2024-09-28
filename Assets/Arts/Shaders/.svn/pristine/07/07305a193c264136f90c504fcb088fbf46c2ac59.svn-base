// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Katana/Transparent/Fog"
{
	Properties
	{
		_TintColor("Tint Color", Color) = (0.5,0.5,0.5,0.5)
		_MainTex("Particle Texture", 2D) = "white" {}
		_FogTex("Fog Texture", 2D) = "white" {}
		_FogStrength("FogStrength", Range(1.0,10.0)) =1.0
		_FogOn("Fog Affect By Distance", Range(0,1.0)) = 1.0
		_InvFade("Soft Particles Factor", Range(0.01,3.0)) = 1.0
	}

	Category
	{
		Tags{ "Queue" = "Transparent" "RenderType" = "Transparent" }
		SubShader
		{
			Pass{
			Blend SrcAlpha OneMinusSrcAlpha
			ColorMask RGB
			Cull front Lighting Off ZWrite Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_particles
			#pragma multi_compile_fog

			#include "UnityCG.cginc"

			sampler2D _MainTex;
			sampler2D _FogTex;
			fixed4 _TintColor;
			fixed _FogStrength;
			fixed _FogOn;
			struct appdata_t
			{
				float4 vertex : POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				#ifdef SOFTPARTICLES_ON
				float4 projPos : TEXCOORD2;
				#endif
			};

			float4 _MainTex_ST;

			v2f vert(appdata_t v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				#ifdef SOFTPARTICLES_ON
				o.projPos = ComputeScreenPos(o.vertex);
				COMPUTE_EYEDEPTH(o.projPos.z);
				#endif
				o.color = v.color;
				o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}

			sampler2D_float _CameraDepthTexture;
			float _InvFade;

			fixed4 frag(v2f i) : SV_Target
			{
				#ifdef SOFTPARTICLES_ON
				float sceneZ = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE_PROJ(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)));
				float partZ = i.projPos.z;
				float fade = saturate(_InvFade * (sceneZ - partZ));
				i.color.a *= fade;
				#endif
				fixed4 alpha = tex2D(_FogTex, i.texcoord);
				fixed4 col = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord);
				if(_FogOn==0)
					UNITY_APPLY_FOG(alpha.a * _FogStrength, col);
				else
					UNITY_APPLY_FOG(i.fogCoord * (1 + alpha.a * _FogStrength), col);
				return col;
			}
			ENDCG
		}
			Pass{
			Blend SrcAlpha OneMinusSrcAlpha
			ColorMask RGB
			Cull back Lighting Off ZWrite Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_particles
			#pragma multi_compile_fog

			#include "UnityCG.cginc"

			sampler2D _MainTex;
			sampler2D _FogTex;
			fixed4 _TintColor;
			fixed _FogStrength;
			fixed _FogOn;
			struct appdata_t
			{
				float4 vertex : POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				#ifdef SOFTPARTICLES_ON
				float4 projPos : TEXCOORD2;
				#endif
			};

			float4 _MainTex_ST;

			v2f vert(appdata_t v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				#ifdef SOFTPARTICLES_ON
				o.projPos = ComputeScreenPos(o.vertex);
				COMPUTE_EYEDEPTH(o.projPos.z);
				#endif
				o.color = v.color;
				o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}

			sampler2D_float _CameraDepthTexture;
			float _InvFade;

			fixed4 frag(v2f i) : SV_Target
			{
				#ifdef SOFTPARTICLES_ON
				float sceneZ = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE_PROJ(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)));
				float partZ = i.projPos.z;
				float fade = saturate(_InvFade * (sceneZ - partZ));
				i.color.a *= fade;
				#endif
				fixed4 alpha = tex2D(_FogTex, i.texcoord);
				fixed4 col = 2.0f * i.color * _TintColor * tex2D(_MainTex, i.texcoord);
				if(_FogOn==0)
						UNITY_APPLY_FOG(alpha.a * _FogStrength, col);
					else
						UNITY_APPLY_FOG(i.fogCoord * (1 + alpha.a * _FogStrength), col);
				return col;
			}
			ENDCG
		}
		}
	}
}
