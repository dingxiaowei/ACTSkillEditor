// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:34242,y:32756,varname:node_4795,prsc:2|emission-4652-OUT,alpha-5131-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32239,y:32576,varname:_MainTex,prsc:2,tex:d9e6308ed36666f4f88ae3e32fcf2780,ntxv:0,isnm:False|UVIN-3326-UVOUT,TEX-2525-TEX;n:type:ShaderForge.SFN_Color,id:797,x:33462,y:32680,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32461,y:33453,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_TexCoord,id:7673,x:31535,y:32421,varname:node_7673,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:3326,x:31946,y:32487,varname:node_3326,prsc:2,spu:-0.2,spv:0|UVIN-7673-UVOUT,DIST-1230-OUT;n:type:ShaderForge.SFN_Tex2d,id:7,x:32301,y:33140,varname:_MainTex_copy,prsc:2,ntxv:0,isnm:False|UVIN-9555-UVOUT,TEX-1964-TEX;n:type:ShaderForge.SFN_Vector1,id:3211,x:33202,y:33958,varname:node_3211,prsc:2,v1:2;n:type:ShaderForge.SFN_TexCoord,id:1152,x:31584,y:33199,varname:node_1152,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9555,x:31943,y:33489,varname:node_9555,prsc:2,spu:0,spv:-0.1|UVIN-1152-UVOUT,DIST-9551-OUT;n:type:ShaderForge.SFN_Multiply,id:5181,x:33011,y:32976,varname:node_5181,prsc:2|A-7360-OUT,B-3724-OUT,C-9342-OUT,D-575-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6433,x:31946,y:33237,ptovrint:False,ptlb:A,ptin:_A,varname:node_6433,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:9342,x:32980,y:33384,ptovrint:False,ptlb:Range,ptin:_Range,varname:node_9342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.490118,max:3;n:type:ShaderForge.SFN_Clamp01,id:9686,x:33212,y:32956,varname:node_9686,prsc:2|IN-5181-OUT;n:type:ShaderForge.SFN_RemapRange,id:3615,x:33416,y:32937,varname:node_3615,prsc:2,frmn:0.1,frmx:0.5,tomn:0,tomx:0.9|IN-9686-OUT;n:type:ShaderForge.SFN_Multiply,id:575,x:32796,y:33383,varname:node_575,prsc:2|A-7766-OUT,B-9248-OUT;n:type:ShaderForge.SFN_TexCoord,id:6084,x:31583,y:33713,varname:node_6084,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:2838,x:31943,y:33740,varname:node_2838,prsc:2,spu:0,spv:-0.1|UVIN-6084-UVOUT,DIST-6674-OUT;n:type:ShaderForge.SFN_Tex2d,id:5540,x:32288,y:33482,varname:node_5540,prsc:2,ntxv:0,isnm:False|UVIN-2838-UVOUT,TEX-6433-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2525,x:31963,y:32787,ptovrint:False,ptlb:C,ptin:_C,varname:_node_6433_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d9e6308ed36666f4f88ae3e32fcf2780,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1964,x:31945,y:33001,ptovrint:False,ptlb:B,ptin:_B,varname:_C_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7360,x:32657,y:32687,varname:node_7360,prsc:2|A-6074-RGB,B-5923-OUT;n:type:ShaderForge.SFN_Slider,id:5923,x:32193,y:32357,ptovrint:False,ptlb:C_brightness,ptin:_C_brightness,varname:node_5923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Slider,id:4725,x:32209,y:33762,ptovrint:False,ptlb:A_brightness,ptin:_A_brightness,varname:_node_5923_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:7766,x:32573,y:33745,varname:node_7766,prsc:2|A-5540-RGB,B-4725-OUT;n:type:ShaderForge.SFN_Slider,id:5286,x:32222,y:33358,ptovrint:False,ptlb:B_brightness,ptin:_B_brightness,varname:_node_5923_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:3724,x:32578,y:33235,varname:node_3724,prsc:2|A-7-RGB,B-5286-OUT;n:type:ShaderForge.SFN_Time,id:9008,x:31372,y:33417,varname:node_9008,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9551,x:31595,y:33499,varname:node_9551,prsc:2|A-9008-T,B-3711-OUT;n:type:ShaderForge.SFN_Slider,id:3711,x:31128,y:33611,ptovrint:False,ptlb:B_speed,ptin:_B_speed,varname:node_3711,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:1,max:2;n:type:ShaderForge.SFN_Time,id:8716,x:31226,y:32540,varname:node_8716,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1230,x:31523,y:32658,varname:node_1230,prsc:2|A-8716-T,B-4075-OUT;n:type:ShaderForge.SFN_Slider,id:4075,x:31069,y:32799,ptovrint:False,ptlb:C_speed,ptin:_C_speed,varname:_node_3711_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0.8444657,max:2;n:type:ShaderForge.SFN_Slider,id:8061,x:33530,y:33179,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_8061,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:5131,x:33921,y:33134,varname:node_5131,prsc:2|A-7222-OUT,B-8061-OUT;n:type:ShaderForge.SFN_Time,id:6137,x:31379,y:33924,varname:node_6137,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6674,x:31569,y:34009,varname:node_6674,prsc:2|A-6137-T,B-6370-OUT;n:type:ShaderForge.SFN_Slider,id:6370,x:31156,y:34202,ptovrint:False,ptlb:A_speed,ptin:_A_speed,varname:node_6370,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:4652,x:33796,y:32711,varname:node_4652,prsc:2|A-797-RGB,B-79-OUT;n:type:ShaderForge.SFN_Clamp01,id:79,x:33593,y:32937,varname:node_79,prsc:2|IN-3615-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7222,x:33782,y:32937,varname:node_7222,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-79-OUT;proporder:8061-797-9342-6433-4725-6370-1964-5286-3711-2525-5923-4075;pass:END;sub:END;*/

Shader "Shader Forge/additive_wu" {
    Properties {
        _Opacity ("Opacity", Range(0, 1)) = 1
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _Range ("Range", Range(0, 3)) = 0.490118
        _A ("A", 2D) = "white" {}
        _A_brightness ("A_brightness", Range(0, 3)) = 1
        _A_speed ("A_speed", Range(-2, 2)) = 1
        _B ("B", 2D) = "white" {}
        _B_brightness ("B_brightness", Range(0, 3)) = 1
        _B_speed ("B_speed", Range(-2, 2)) = 1
        _C ("C", 2D) = "white" {}
        _C_brightness ("C_brightness", Range(0, 3)) = 1
        _C_speed ("C_speed", Range(-2, 2)) = 0.8444657
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _TintColor;
            uniform sampler2D _A; uniform float4 _A_ST;
            uniform float _Range;
            uniform sampler2D _C; uniform float4 _C_ST;
            uniform sampler2D _B; uniform float4 _B_ST;
            uniform float _C_brightness;
            uniform float _A_brightness;
            uniform float _B_brightness;
            uniform float _B_speed;
            uniform float _C_speed;
            uniform float _Opacity;
            uniform float _A_speed;
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
////// Lighting:
////// Emissive:
                float4 node_8716 = _Time + _TimeEditor;
                float2 node_3326 = (i.uv0+(node_8716.g*_C_speed)*float2(-0.2,0));
                float4 _MainTex = tex2D(_C,TRANSFORM_TEX(node_3326, _C));
                float4 node_9008 = _Time + _TimeEditor;
                float2 node_9555 = (i.uv0+(node_9008.g*_B_speed)*float2(0,-0.1));
                float4 _MainTex_copy = tex2D(_B,TRANSFORM_TEX(node_9555, _B));
                float4 node_6137 = _Time + _TimeEditor;
                float2 node_2838 = (i.uv0+(node_6137.g*_A_speed)*float2(0,-0.1));
                float4 node_5540 = tex2D(_A,TRANSFORM_TEX(node_2838, _A));
                float3 node_3615 = (saturate(((_MainTex.rgb*_C_brightness)*(_MainTex_copy.rgb*_B_brightness)*_Range*((node_5540.rgb*_A_brightness)*2.0)))*2.25+-0.225);
                float3 node_79 = saturate(node_3615);
                float3 emissive = (_TintColor.rgb*node_79);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(node_79.r*_Opacity));
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
