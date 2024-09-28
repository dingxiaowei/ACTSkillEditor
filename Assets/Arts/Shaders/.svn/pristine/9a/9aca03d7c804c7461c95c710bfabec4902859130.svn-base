// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:14,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:140,fgrf:750,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32972,y:32609,varname:node_2865,prsc:2|emission-6343-OUT,clip-5705-OUT,voffset-8647-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32607,y:32608,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:32354,y:32549,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:32354,y:32705,ptovrint:True,ptlb:Texture,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:13262041a8fd77d4dacb3f957cef822c,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2486,x:32410,y:32968,ptovrint:False,ptlb:Wave Tex,ptin:_WaveTex,varname:node_2486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0096ece63a1d536459c0e80562d02048,ntxv:0,isnm:False|UVIN-8024-OUT;n:type:ShaderForge.SFN_TexCoord,id:2200,x:31948,y:32881,varname:node_2200,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5738,x:31948,y:33039,varname:node_5738,prsc:2|A-1353-OUT,B-5430-TSL;n:type:ShaderForge.SFN_Time,id:5430,x:31693,y:33174,varname:node_5430,prsc:2;n:type:ShaderForge.SFN_Append,id:1353,x:31693,y:33039,varname:node_1353,prsc:2|A-4196-OUT,B-6715-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4196,x:31476,y:33039,ptovrint:False,ptlb:Wave Speed U,ptin:_WaveSpeedU,varname:node_4196,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:6715,x:31476,y:33106,ptovrint:False,ptlb:Wave Speed V,ptin:_WaveSpeedV,varname:node_6715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:8024,x:32117,y:32969,varname:node_8024,prsc:2|A-2200-UVOUT,B-5738-OUT;n:type:ShaderForge.SFN_Multiply,id:8647,x:32787,y:32969,varname:node_8647,prsc:2|A-2486-RGB,B-1107-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1107,x:32410,y:33167,ptovrint:False,ptlb:Wave Power,ptin:_WavePower,varname:node_1107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:9603,x:32580,y:32864,ptovrint:False,ptlb:Alpha Cutout,ptin:_AlphaCutout,varname:node_9603,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5705,x:32763,y:32791,varname:node_5705,prsc:2|A-7736-A,B-9603-OUT;proporder:6665-7736-2486-4196-6715-1107-9603;pass:END;sub:END;*/

Shader "Scene Shader/VO_Leaves" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Texture", 2D) = "black" {}
        _WaveTex ("Wave Tex", 2D) = "white" {}
        _WaveSpeedU ("Wave Speed U", Float ) = 0.1
        _WaveSpeedV ("Wave Speed V", Float ) = 0
        _WavePower ("Wave Power", Float ) = 0.5
        _AlphaCutout ("Alpha Cutout", Float ) = 1
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
            Cull Off
            
            ColorMask RGB
            
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _WaveTex; uniform float4 _WaveTex_ST;
            uniform float _WaveSpeedU;
            uniform float _WaveSpeedV;
            uniform float _WavePower;
            uniform float _AlphaCutout;
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
                float4 node_5430 = _Time + _TimeEditor;
                float2 node_8024 = (o.uv0+(float2(_WaveSpeedU,_WaveSpeedV)*node_5430.r));
                float4 _WaveTex_var = tex2Dlod(_WaveTex,float4(TRANSFORM_TEX(node_8024, _WaveTex),0.0,0));
                v.vertex.xyz += (_WaveTex_var.rgb*_WavePower);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_AlphaCutout) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_MainTex_var.rgb*_Color.rgb);
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
            Cull Off
            ColorMask RGB
            
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _WaveTex; uniform float4 _WaveTex_ST;
            uniform float _WaveSpeedU;
            uniform float _WaveSpeedV;
            uniform float _WavePower;
            uniform float _AlphaCutout;
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
                float4 node_5430 = _Time + _TimeEditor;
                float2 node_8024 = (o.uv0+(float2(_WaveSpeedU,_WaveSpeedV)*node_5430.r));
                float4 _WaveTex_var = tex2Dlod(_WaveTex,float4(TRANSFORM_TEX(node_8024, _WaveTex),0.0,0));
                v.vertex.xyz += (_WaveTex_var.rgb*_WavePower);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*_AlphaCutout) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
