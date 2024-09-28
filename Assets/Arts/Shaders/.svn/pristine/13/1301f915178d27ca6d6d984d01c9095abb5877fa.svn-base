// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.19 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.19;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,varname:node_9361,prsc:2|emission-1544-RGB,alpha-1544-A;n:type:ShaderForge.SFN_Tex2d,id:1544,x:32666,y:32817,varname:node_1544,prsc:2,ntxv:0,isnm:False|UVIN-2341-UVOUT,TEX-4324-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4324,x:32443,y:33113,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:5832,x:31718,y:32622,varname:node_5832,prsc:2,uv:0;n:type:ShaderForge.SFN_UVTile,id:2341,x:32223,y:32977,varname:node_2341,prsc:2|UVIN-4377-OUT,WDT-2946-X,HGT-5833-OUT,TILE-2660-OUT;n:type:ShaderForge.SFN_Append,id:4377,x:32252,y:32640,varname:node_4377,prsc:2|A-5832-U,B-1161-OUT;n:type:ShaderForge.SFN_Vector4Property,id:2946,x:31369,y:32991,ptovrint:False,ptlb:node_2946,ptin:_node_2946,varname:_node_2946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4,v2:4,v3:0,v4:1;n:type:ShaderForge.SFN_Trunc,id:2660,x:32618,y:33351,varname:node_2660,prsc:2|IN-9079-OUT;n:type:ShaderForge.SFN_RemapRange,id:1161,x:31965,y:32692,varname:node_1161,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-5832-V;n:type:ShaderForge.SFN_Negate,id:5833,x:31830,y:32854,varname:node_5833,prsc:2|IN-2946-Y;n:type:ShaderForge.SFN_Multiply,id:8044,x:31628,y:33304,varname:node_8044,prsc:2|A-2946-X,B-2946-Y;n:type:ShaderForge.SFN_Subtract,id:2278,x:31890,y:33289,varname:node_2278,prsc:2|A-8044-OUT,B-2946-Z;n:type:ShaderForge.SFN_Fmod,id:9079,x:32335,y:33451,varname:node_9079,prsc:2|A-2198-OUT,B-2278-OUT;n:type:ShaderForge.SFN_Time,id:5428,x:31665,y:33578,varname:node_5428,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2198,x:32020,y:33644,varname:node_2198,prsc:2|A-5428-T,B-2946-W;proporder:4324-2946;pass:END;sub:END;*/

Shader "Shader Forge/xuliezhen" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _node_2946 ("node_2946", Vector) = (4,4,0,1)
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _node_2946;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float4 node_5428 = _Time + _TimeEditor;
                float node_2660 = trunc(fmod((node_5428.g*_node_2946.a),((_node_2946.r*_node_2946.g)-_node_2946.b)));
                float2 node_2341_tc_rcp = float2(1.0,1.0)/float2( _node_2946.r, (-1*_node_2946.g) );
                float node_2341_ty = floor(node_2660 * node_2341_tc_rcp.x);
                float node_2341_tx = node_2660 - _node_2946.r * node_2341_ty;
                float2 node_2341 = (float2(i.uv0.r,(i.uv0.g*-1.0+1.0)) + float2(node_2341_tx, node_2341_ty)) * node_2341_tc_rcp;
                float4 node_1544 = tex2D(_Diffuse,TRANSFORM_TEX(node_2341, _Diffuse));
                float3 emissive = node_1544.rgb;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_1544.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
