// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:140,fgrf:750,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32972,y:32609,varname:node_2865,prsc:2|diffpow-6665-RGB,emission-655-OUT,clip-4278-A;n:type:ShaderForge.SFN_Color,id:6665,x:32248,y:32510,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_TexCoord,id:2104,x:31580,y:32468,varname:node_2104,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:9656,x:31580,y:32626,varname:node_9656,prsc:2|A-1066-OUT,B-5111-T;n:type:ShaderForge.SFN_Time,id:5111,x:31301,y:32749,varname:node_5111,prsc:2;n:type:ShaderForge.SFN_Append,id:1066,x:31301,y:32614,varname:node_1066,prsc:2|A-127-OUT,B-8993-OUT;n:type:ShaderForge.SFN_Add,id:8243,x:31749,y:32556,varname:node_8243,prsc:2|A-2104-UVOUT,B-9656-OUT;n:type:ShaderForge.SFN_ValueProperty,id:127,x:31083,y:32614,ptovrint:False,ptlb:U speed_Color,ptin:_Uspeed_Color,varname:node_127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8993,x:31081,y:32721,ptovrint:False,ptlb:V speed_Color,ptin:_Vspeed_Color,varname:node_8993,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4278,x:32200,y:32706,ptovrint:False,ptlb:Emission Tex,ptin:_EmissionTex,varname:node_4278,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8243-OUT;n:type:ShaderForge.SFN_Multiply,id:655,x:32757,y:32709,varname:node_655,prsc:2|A-4278-RGB,B-9592-OUT,C-6665-RGB;n:type:ShaderForge.SFN_ValueProperty,id:9592,x:32595,y:32781,ptovrint:False,ptlb:Emission Prower,ptin:_EmissionPrower,varname:node_9592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:6665-127-8993-4278-9592;pass:END;sub:END;*/

Shader "Scene Shader/VO_BG" {
    Properties {
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _Uspeed_Color ("U speed_Color", Float ) = 1
        _Vspeed_Color ("V speed_Color", Float ) = 0
        _EmissionTex ("Emission Tex", 2D) = "white" {}
        _EmissionPrower ("Emission Prower", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform float _Uspeed_Color;
            uniform float _Vspeed_Color;
            uniform sampler2D _EmissionTex; uniform float4 _EmissionTex_ST;
            uniform float _EmissionPrower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 node_5111 = _Time + _TimeEditor;
                float2 node_8243 = (i.uv0+(float2(_Uspeed_Color,_Vspeed_Color)*node_5111.g));
                float4 _EmissionTex_var = tex2D(_EmissionTex,TRANSFORM_TEX(node_8243, _EmissionTex));
                clip(_EmissionTex_var.a - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_EmissionTex_var.rgb*_EmissionPrower*_Color.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Uspeed_Color;
            uniform float _Vspeed_Color;
            uniform sampler2D _EmissionTex; uniform float4 _EmissionTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_5111 = _Time + _TimeEditor;
                float2 node_8243 = (i.uv0+(float2(_Uspeed_Color,_Vspeed_Color)*node_5111.g));
                float4 _EmissionTex_var = tex2D(_EmissionTex,TRANSFORM_TEX(node_8243, _EmissionTex));
                clip(_EmissionTex_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
