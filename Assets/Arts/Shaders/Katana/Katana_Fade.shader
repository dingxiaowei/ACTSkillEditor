// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Katana/Transparent/Fade"
{
    Properties
    {
	   _Lightness("Lightness",Range(0,5))=1.5
	   _MainColor ("Color", Color) = (1,1,1,1)
       _MainTex ("Texture", 2D) = "white" {}
	}
    SubShader
    {  
		Tags { "Queue"="AlphaTest" "IgnoreProjector"="false" "RenderType"="Opaque" }
	    Blend SrcAlpha OneMinusSrcAlpha
	    ColorMask RGB
	    Cull Off Lighting Off
        Pass
        {
            Tags {"LightMode"="ForwardBase"}
            CGPROGRAM
        	#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_particles
			#pragma multi_compile_fwdbase
			#pragma multi_compile_fog
			#pragma multi_compile LIGHTMAP_ON LIGHTMAP_OFF
			

			#include "UnityCG.cginc"
			#include "AutoLight.cginc"
			#include "Lighting.cginc"
		
			struct appdata_t
			{
				float4 vertex : POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
				float3 normal : NORMAL;
				#ifdef LIGHTMAP_ON
				float2 uv_lightmap : TEXCOORD1;
				#endif
			};
            struct v2f
            {
                float2 uv : TEXCOORD0;
				#ifdef LIGHTMAP_ON
              	float2 uv_lightmap : TEXCOORD1;
				#endif
                fixed3 diff : COLOR0;
                fixed3 ambient : COLOR1;
                float4 pos : SV_POSITION;
				UNITY_FOG_COORDS(2)
				SHADOW_COORDS(3) // put shadows data into TEXCOORD3
			    
            };
            v2f vert (appdata_t v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv = v.texcoord;
                half3 worldNormal = UnityObjectToWorldNormal(v.normal);
                half nl = max(0, dot(worldNormal, _WorldSpaceLightPos0.xyz));
                o.diff = nl * _LightColor0.rgb;
                o.ambient = ShadeSH9(half4(worldNormal,1));
				UNITY_TRANSFER_FOG(o,o.pos);
                // compute shadows data
                TRANSFER_SHADOW(o)

				#ifdef LIGHTMAP_ON
				 o.uv_lightmap= v.uv_lightmap.xy*unity_LightmapST.xy+unity_LightmapST.zw;
				#endif
                return o;
            }
			float _Lightness;
			float4 _MainColor;
            sampler2D _MainTex;
            fixed4 frag (v2f i) : SV_Target
            {
                fixed4 col = tex2D(_MainTex, i.uv);
				
				#ifndef LIGHTMAP_ON
                fixed shadow = SHADOW_ATTENUATION(i);
                fixed3 lighting = i.diff * shadow+i.ambient;
                col.rgb *= lighting;
				#endif

				#ifdef LIGHTMAP_ON
				col.rgb *= (DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, i.uv_lightmap.xy)));
				#endif
				col*=_MainColor;
				col.rgb*=_Lightness;
			    UNITY_APPLY_FOG(i.fogCoord, col);
                return col;
            }
            ENDCG
        }

        UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"
    }
	FallBack "Legacy Shaders/Lightmapped/VertexLit"
}