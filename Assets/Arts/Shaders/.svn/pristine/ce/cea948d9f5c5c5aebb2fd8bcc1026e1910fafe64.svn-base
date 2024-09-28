// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34566,y:32225,varname:node_9361,prsc:2|emission-1131-OUT,alpha-3752-OUT;n:type:ShaderForge.SFN_TexCoord,id:7996,x:32304,y:32143,varname:node_7996,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:6731,x:32664,y:32435,varname:node_6731,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7996-V;n:type:ShaderForge.SFN_Tex2d,id:1443,x:33364,y:32471,varname:node_1443,prsc:2,ntxv:0,isnm:False|TEX-9289-TEX;n:type:ShaderForge.SFN_Slider,id:7959,x:32770,y:32216,ptovrint:False,ptlb:card_shadow,ptin:_card_shadow,varname:node_7959,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:1948,x:33129,y:32294,varname:node_1948,prsc:2|A-7959-OUT,B-1293-OUT;n:type:ShaderForge.SFN_OneMinus,id:1293,x:32916,y:32329,varname:node_1293,prsc:2|IN-6731-OUT;n:type:ShaderForge.SFN_Clamp01,id:8660,x:33329,y:32294,varname:node_8660,prsc:2|IN-1948-OUT;n:type:ShaderForge.SFN_Multiply,id:1131,x:34216,y:32367,varname:node_1131,prsc:2|A-8140-OUT,B-8096-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9289,x:33119,y:32516,ptovrint:False,ptlb:card_texture,ptin:_card_texture,varname:node_9289,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Power,id:2645,x:33537,y:32186,varname:node_2645,prsc:2|VAL-8660-OUT,EXP-9796-OUT;n:type:ShaderForge.SFN_Slider,id:9796,x:33140,y:32129,ptovrint:False,ptlb:shadow_fanwei,ptin:_shadow_fanwei,varname:node_9796,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:20;n:type:ShaderForge.SFN_Slider,id:3181,x:33113,y:32838,ptovrint:False,ptlb:kapai jianbian,ptin:_kapaijianbian,varname:_shadow_fanwei_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.5;n:type:ShaderForge.SFN_Power,id:8096,x:33523,y:32728,varname:node_8096,prsc:2|VAL-6731-OUT,EXP-3181-OUT;n:type:ShaderForge.SFN_Lerp,id:8140,x:33936,y:32209,varname:node_8140,prsc:2|A-2414-RGB,B-1443-RGB,T-2645-OUT;n:type:ShaderForge.SFN_Color,id:2414,x:33495,y:31914,ptovrint:False,ptlb:shadow_color,ptin:_shadow_color,varname:node_2414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1686275,c2:0,c3:0.003921569,c4:1;n:type:ShaderForge.SFN_Slider,id:3358,x:33837,y:32668,ptovrint:False,ptlb:aplpha,ptin:_aplpha,varname:node_3358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:3752,x:34216,y:32539,varname:node_3752,prsc:2|A-1443-A,B-3358-OUT;proporder:7959-9289-9796-3181-2414-3358;pass:END;sub:END;*/

Shader "Shader Forge/kapai_shader" {
    Properties {
        _card_shadow ("card_shadow", Range(-1, 1)) = 1
        _card_texture ("card_texture", 2D) = "white" {}
        _shadow_fanwei ("shadow_fanwei", Range(0, 20)) = 0
        _kapaijianbian ("kapai jianbian", Range(0, 0.5)) = 0
        _shadow_color ("shadow_color", Color) = (0.1686275,0,0.003921569,1)
        _aplpha ("aplpha", Range(0, 1)) = 0
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float _card_shadow;
            uniform sampler2D _card_texture; uniform float4 _card_texture_ST;
            uniform float _shadow_fanwei;
            uniform float _kapaijianbian;
            uniform float4 _shadow_color;
            uniform float _aplpha;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_1443 = tex2D(_card_texture,TRANSFORM_TEX(i.uv0, _card_texture));
                float node_6731 = i.uv0.g.r;
                float3 emissive = (lerp(_shadow_color.rgb,node_1443.rgb,pow(saturate((_card_shadow+(1.0 - node_6731))),_shadow_fanwei))*pow(node_6731,_kapaijianbian));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(node_1443.a*_aplpha));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
