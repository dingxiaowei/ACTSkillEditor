// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Toon/Shadows" 
{
    Properties
    {
      	_Opaque("Opaque", range(0,1)) = 1
    }
	SubShader 
	{
		Pass 
		{
			Name "SHADOWCAST"
			Tags { "LightMode" = "ShadowCaster" }
			Fog {Mode Off}
			
			ZWrite On ZTest Less Cull Off
			Offset 1, 1

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag					
			#pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
			#include "UnityCG.cginc"
			

			float _Opaque;

			struct v2f { 
				V2F_SHADOW_CASTER;
			};

			v2f vert( appdata_base v)
			{
				v2f o;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)	
				return o;
			}

			float4 frag( v2f i ) : COLOR
			{
			    clip(_Opaque-0.1);
				SHADOW_CASTER_FRAGMENT(i)
			}

			ENDCG

		}
		
        Pass
        {
            Name "SHADOWCOLLECTOR"
            //Blend DstColor SrcColor //Add This

            Blend DstColor SrcColor //Add This
            Tags {"LightMode"="ForwardBase"}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"

            // compile shader into multiple variants, with and without shadows
            // (we don't care about any lightmaps yet, so skip these variants)
            #pragma multi_compile_fwdbase nolightmap nodirlightmap nodynlightmap novertexlight
            // shadow helper functions and macros
            #include "AutoLight.cginc"
            float _ShadowBrightness;
            struct v2f
            {
                SHADOW_COORDS(1) // put shadows data into TEXCOORD1
                fixed3 diff : COLOR0;
                fixed3 ambient : COLOR1;
                float4 pos : SV_POSITION;
            };
            v2f vert (appdata_base v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                half3 worldNormal = UnityObjectToWorldNormal(v.normal);
                half nl = max(0, dot(worldNormal, _WorldSpaceLightPos0.xyz));
                o.diff = nl * _LightColor0.rgb;
                o.ambient = ShadeSH9(half4(worldNormal,1));
                // compute shadows data
                TRANSFER_SHADOW(o)
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // compute shadow attenuation (1.0 = fully lit, 0.0 = fully shadowed)
                fixed shadow = SHADOW_ATTENUATION(i);
                // darken light's illumination with shadow, keep ambient intact
                fixed3 lighting = i.diff * shadow + i.ambient*_ShadowBrightness;
                return fixed4(lighting,1);
            }
            ENDCG
        }
	}
}
