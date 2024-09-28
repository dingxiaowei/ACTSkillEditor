// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:True,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:45,fgrf:100,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1,x:35036,y:32687,varname:node_1,prsc:2|emission-9755-OUT,alpha-6435-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33753,y:32830,ptovrint:False,ptlb:E01,ptin:_E01,varname:node_2759,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5272-OUT;n:type:ShaderForge.SFN_Tex2d,id:7,x:33071,y:32649,ptovrint:False,ptlb:DisE01,ptin:_DisE01,varname:node_67,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:217,x:33403,y:32646,varname:node_217,prsc:2|A-4106-OUT,B-7-R;n:type:ShaderForge.SFN_ValueProperty,id:589,x:32930,y:32157,ptovrint:False,ptlb:DisE01_u,ptin:_DisE01_u,varname:node_9185,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:647,x:33899,y:33209,ptovrint:False,ptlb:MaskE01,ptin:_MaskE01,varname:node_4168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6223-UVOUT;n:type:ShaderForge.SFN_VertexColor,id:653,x:34463,y:33035,varname:node_653,prsc:2;n:type:ShaderForge.SFN_Multiply,id:654,x:34614,y:32810,varname:node_654,prsc:2|A-669-OUT,B-653-RGB;n:type:ShaderForge.SFN_Multiply,id:659,x:34188,y:32810,varname:node_659,prsc:2|A-664-RGB,B-2-RGB;n:type:ShaderForge.SFN_Color,id:664,x:34005,y:32640,ptovrint:False,ptlb:E01_Color,ptin:_E01_Color,varname:node_5790,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:669,x:34375,y:32810,varname:node_669,prsc:2|A-659-OUT,B-675-OUT;n:type:ShaderForge.SFN_ValueProperty,id:675,x:34226,y:32975,ptovrint:False,ptlb:E01_power,ptin:_E01_power,varname:node_9969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Rotator,id:2473,x:33029,y:32843,varname:node_2473,prsc:2|UVIN-5806-UVOUT,ANG-9353-OUT;n:type:ShaderForge.SFN_Pi,id:6997,x:32812,y:33012,varname:node_6997,prsc:2;n:type:ShaderForge.SFN_Add,id:5228,x:33311,y:32825,varname:node_5228,prsc:2|A-217-OUT,B-2473-UVOUT;n:type:ShaderForge.SFN_Power,id:9755,x:34839,y:32849,varname:node_9755,prsc:2|VAL-654-OUT,EXP-5981-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5981,x:34690,y:32973,ptovrint:False,ptlb:power,ptin:_power,varname:node_5981,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:5478,x:32812,y:33135,varname:node_5478,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5146,x:32812,y:33293,ptovrint:False,ptlb:Erotspeed,ptin:_Erotspeed,varname:_E01_UVpan_Speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9797,x:33029,y:33156,varname:node_9797,prsc:2|A-5478-T,B-5146-OUT;n:type:ShaderForge.SFN_Multiply,id:9353,x:33029,y:33012,varname:node_9353,prsc:2|A-6997-OUT,B-9797-OUT;n:type:ShaderForge.SFN_TexCoord,id:5806,x:32851,y:32843,varname:node_5806,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4486,x:33251,y:32161,varname:node_4486,prsc:2|A-589-OUT,B-8120-OUT;n:type:ShaderForge.SFN_Multiply,id:2115,x:33251,y:32319,varname:node_2115,prsc:2|A-8120-OUT,B-8335-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8335,x:32911,y:32339,ptovrint:False,ptlb:DisE01_v,ptin:_DisE01_v,varname:node_8335,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:8120,x:33022,y:32252,varname:node_8120,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Append,id:4106,x:33405,y:32245,varname:node_4106,prsc:2|A-4486-OUT,B-2115-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5272,x:33570,y:32847,ptovrint:False,ptlb:DISUV,ptin:_DISUV,varname:node_5272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2473-UVOUT,B-5228-OUT;n:type:ShaderForge.SFN_Multiply,id:6435,x:34660,y:33130,varname:node_6435,prsc:2|A-653-A,B-4692-OUT;n:type:ShaderForge.SFN_Multiply,id:6744,x:34097,y:33238,varname:node_6744,prsc:2|A-647-R,B-3277-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3277,x:33899,y:33412,ptovrint:False,ptlb:alph_power,ptin:_alph_power,varname:node_3277,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4692,x:34338,y:33209,varname:node_4692,prsc:2|A-2-R,B-6744-OUT;n:type:ShaderForge.SFN_TexCoord,id:4713,x:33540,y:33209,varname:node_4713,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:6223,x:33718,y:33209,varname:node_6223,prsc:2|UVIN-4713-UVOUT,ANG-1491-OUT;n:type:ShaderForge.SFN_Multiply,id:1491,x:33718,y:33378,varname:node_1491,prsc:2|A-1692-OUT,B-7878-OUT;n:type:ShaderForge.SFN_Pi,id:1692,x:33501,y:33378,varname:node_1692,prsc:2;n:type:ShaderForge.SFN_Time,id:3097,x:33501,y:33501,varname:node_3097,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7878,x:33718,y:33522,varname:node_7878,prsc:2|A-3097-T,B-3291-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3291,x:33501,y:33659,ptovrint:False,ptlb:alphaspeed,ptin:_alphaspeed,varname:_Erotspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:2-675-664-5146-7-5272-589-8335-647-3277-5981-3291;pass:END;sub:END;*/

Shader "AE_Effect/UV_Rotate_blend" {
    Properties {
        _E01 ("E01", 2D) = "white" {}
        _E01_power ("E01_power", Float ) = 1
        _E01_Color ("E01_Color", Color) = (1,1,1,1)
        _Erotspeed ("Erotspeed", Float ) = 0
        _DisE01 ("DisE01", 2D) = "white" {}
        [MaterialToggle] _DISUV ("DISUV", Float ) = 0
        _DisE01_u ("DisE01_u", Float ) = 0
        _DisE01_v ("DisE01_v", Float ) = 0
        _MaskE01 ("MaskE01", 2D) = "white" {}
        _alph_power ("alph_power", Float ) = 1
        _power ("power", Float ) = 1
        _alphaspeed ("alphaspeed", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _E01; uniform float4 _E01_ST;
            uniform sampler2D _DisE01; uniform float4 _DisE01_ST;
            uniform float _DisE01_u;
            uniform sampler2D _MaskE01; uniform float4 _MaskE01_ST;
            uniform float4 _E01_Color;
            uniform float _E01_power;
            uniform float _power;
            uniform float _Erotspeed;
            uniform float _DisE01_v;
            uniform fixed _DISUV;
            uniform float _alph_power;
            uniform float _alphaspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_5478 = _Time + _TimeEditor;
                float node_2473_ang = (3.141592654*(node_5478.g*_Erotspeed));
                float node_2473_spd = 1.0;
                float node_2473_cos = cos(node_2473_spd*node_2473_ang);
                float node_2473_sin = sin(node_2473_spd*node_2473_ang);
                float2 node_2473_piv = float2(0.5,0.5);
                float2 node_2473 = (mul(i.uv0-node_2473_piv,float2x2( node_2473_cos, -node_2473_sin, node_2473_sin, node_2473_cos))+node_2473_piv);
                float node_8120 = 0.1;
                float4 _DisE01_var = tex2D(_DisE01,TRANSFORM_TEX(i.uv0, _DisE01));
                float2 _DISUV_var = lerp( node_2473, ((float2((_DisE01_u*node_8120),(node_8120*_DisE01_v))*_DisE01_var.r)+node_2473), _DISUV );
                float4 _E01_var = tex2D(_E01,TRANSFORM_TEX(_DISUV_var, _E01));
                float3 emissive = pow((((_E01_Color.rgb*_E01_var.rgb)*_E01_power)*i.vertexColor.rgb),_power);
                float3 finalColor = emissive;
                float4 node_3097 = _Time + _TimeEditor;
                float node_6223_ang = (3.141592654*(node_3097.g*_alphaspeed));
                float node_6223_spd = 1.0;
                float node_6223_cos = cos(node_6223_spd*node_6223_ang);
                float node_6223_sin = sin(node_6223_spd*node_6223_ang);
                float2 node_6223_piv = float2(0.5,0.5);
                float2 node_6223 = (mul(i.uv0-node_6223_piv,float2x2( node_6223_cos, -node_6223_sin, node_6223_sin, node_6223_cos))+node_6223_piv);
                float4 _MaskE01_var = tex2D(_MaskE01,TRANSFORM_TEX(node_6223, _MaskE01));
                fixed4 finalRGBA = fixed4(finalColor,(i.vertexColor.a*(_E01_var.r*(_MaskE01_var.r*_alph_power))));
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
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
