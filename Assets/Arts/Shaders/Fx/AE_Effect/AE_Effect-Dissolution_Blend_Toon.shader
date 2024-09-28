// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32457,y:33702,varname:node_3138,prsc:2|emission-5235-OUT,clip-6644-OUT,olwid-5805-OUT,olcol-5152-RGB;n:type:ShaderForge.SFN_Tex2d,id:3755,x:28998,y:34246,ptovrint:False,ptlb:T_mask,ptin:_T_mask,varname:_T_mask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_If,id:5746,x:29700,y:34156,varname:node_5746,prsc:2|A-1423-OUT,B-3755-R,GT-6272-OUT,EQ-6272-OUT,LT-3073-OUT;n:type:ShaderForge.SFN_Vector1,id:6272,x:29420,y:34301,varname:node_6272,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:3073,x:29420,y:34426,varname:node_3073,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:6731,x:30834,y:33991,varname:node_6731,prsc:2|A-617-A,B-6450-OUT;n:type:ShaderForge.SFN_Color,id:7519,x:30124,y:33449,ptovrint:False,ptlb:Color&Alpha,ptin:_ColorAlpha,varname:_ColorAlpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3808,x:30610,y:33432,varname:node_3808,prsc:2|A-7519-RGB,B-7735-OUT;n:type:ShaderForge.SFN_Multiply,id:6644,x:31104,y:33933,varname:node_6644,prsc:2|A-7519-A,B-6731-OUT;n:type:ShaderForge.SFN_ValueProperty,id:329,x:29097,y:34047,ptovrint:False,ptlb:N_mask,ptin:_N_mask,varname:_N_mask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_If,id:5217,x:29691,y:34408,varname:node_5217,prsc:2|A-1423-OUT,B-2022-OUT,GT-6272-OUT,EQ-6272-OUT,LT-3073-OUT;n:type:ShaderForge.SFN_Add,id:2022,x:29231,y:34404,varname:node_2022,prsc:2|A-3755-R,B-5828-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5828,x:29000,y:34502,ptovrint:False,ptlb:N_BY_KD,ptin:_N_BY_KD,varname:_N_BY_KD,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Subtract,id:1274,x:29920,y:34305,varname:node_1274,prsc:2|A-5746-OUT,B-5217-OUT;n:type:ShaderForge.SFN_Color,id:9508,x:30153,y:34508,ptovrint:False,ptlb:C_BYcolor,ptin:_C_BYcolor,varname:_C_BYcolor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:6450,x:30602,y:34118,varname:node_6450,prsc:2|A-5746-OUT,B-1274-OUT;n:type:ShaderForge.SFN_VertexColor,id:3457,x:29069,y:33822,varname:node_3457,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1423,x:29423,y:34007,varname:node_1423,prsc:2|A-3457-A,B-329-OUT;n:type:ShaderForge.SFN_Multiply,id:3178,x:30964,y:33626,varname:node_3178,prsc:2|A-3808-OUT,B-3457-RGB;n:type:ShaderForge.SFN_Color,id:5152,x:31737,y:34621,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:_OutlineColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1176471,c2:0.03921569,c3:0,c4:1;n:type:ShaderForge.SFN_NormalVector,id:5654,x:23890,y:37053,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:716,x:24412,y:36901,varname:node_716,prsc:2,dt:1|A-1845-OUT,B-5654-OUT;n:type:ShaderForge.SFN_Clamp01,id:22,x:24674,y:36935,varname:node_22,prsc:2|IN-716-OUT;n:type:ShaderForge.SFN_Tex2d,id:7593,x:23789,y:35527,ptovrint:False,ptlb:MASK,ptin:_MASK,varname:_MASK,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6318,x:24581,y:37199,varname:node_6318,prsc:2|A-7593-B,B-9778-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9778,x:24228,y:37330,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:1765,x:25250,y:36934,varname:node_1765,prsc:2|IN-4578-OUT;n:type:ShaderForge.SFN_NormalVector,id:8616,x:24456,y:36118,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:4837,x:24755,y:35889,varname:node_4837,prsc:2,dt:1|A-7301-OUT,B-8616-OUT;n:type:ShaderForge.SFN_Subtract,id:5070,x:25768,y:35840,varname:node_5070,prsc:2|A-9748-OUT,B-2858-OUT;n:type:ShaderForge.SFN_Tex2d,id:617,x:24429,y:35101,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1136,x:26516,y:36806,varname:node_1136,prsc:2|A-9236-OUT,B-5309-OUT;n:type:ShaderForge.SFN_Multiply,id:9236,x:26093,y:36676,varname:node_9236,prsc:2|A-1119-OUT,B-1119-OUT,C-7593-G;n:type:ShaderForge.SFN_Multiply,id:67,x:26910,y:36186,cmnt:Specular,varname:node_67,prsc:2|A-8911-OUT,B-1136-OUT;n:type:ShaderForge.SFN_Add,id:1984,x:28709,y:34904,varname:node_1984,prsc:2|A-7948-OUT,B-67-OUT;n:type:ShaderForge.SFN_Slider,id:1119,x:25624,y:36407,ptovrint:False,ptlb:SpecularBrightness,ptin:_SpecularBrightness,varname:_SpecularBrightness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_ValueProperty,id:3802,x:24524,y:36486,ptovrint:False,ptlb:ShadowRange,ptin:_ShadowRange,varname:_ShadowRange,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:6580,x:25105,y:36728,ptovrint:False,ptlb:SpecularRange,ptin:_SpecularRange,varname:_SpecularRange,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:4578,x:24998,y:36949,varname:node_4578,prsc:2|A-22-OUT,B-6318-OUT;n:type:ShaderForge.SFN_Slider,id:9486,x:24819,y:36103,ptovrint:False,ptlb:AS,ptin:_AS,varname:_AS,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.1,max:3;n:type:ShaderForge.SFN_HalfVector,id:1845,x:23888,y:36801,varname:node_1845,prsc:2;n:type:ShaderForge.SFN_Step,id:8911,x:26502,y:36200,varname:node_8911,prsc:2|A-2864-OUT,B-5070-OUT;n:type:ShaderForge.SFN_Step,id:5309,x:25610,y:36845,varname:node_5309,prsc:2|A-6580-OUT,B-1765-OUT;n:type:ShaderForge.SFN_Clamp01,id:2858,x:25353,y:36097,varname:node_2858,prsc:2|IN-6035-OUT;n:type:ShaderForge.SFN_Power,id:9748,x:25201,y:35845,varname:node_9748,prsc:2|VAL-4837-OUT,EXP-9486-OUT;n:type:ShaderForge.SFN_Multiply,id:1929,x:24753,y:36439,varname:node_1929,prsc:2|A-7593-R,B-3802-OUT;n:type:ShaderForge.SFN_OneMinus,id:6035,x:25037,y:36314,varname:node_6035,prsc:2|IN-1929-OUT;n:type:ShaderForge.SFN_Blend,id:8005,x:25508,y:34726,varname:node_8005,prsc:2,blmd:1,clmp:True|SRC-617-RGB,DST-617-RGB;n:type:ShaderForge.SFN_Slider,id:2864,x:25765,y:35453,ptovrint:False,ptlb:ShadowThreshlold,ptin:_ShadowThreshlold,varname:_ShadowThreshlold,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_If,id:3265,x:27256,y:35007,varname:node_3265,prsc:2|A-5070-OUT,B-2864-OUT,GT-7331-OUT,EQ-3358-OUT,LT-3358-OUT;n:type:ShaderForge.SFN_Lerp,id:9363,x:25847,y:34904,varname:node_9363,prsc:2|A-8005-OUT,B-617-RGB,T-2982-OUT;n:type:ShaderForge.SFN_Slider,id:3842,x:24945,y:35239,ptovrint:False,ptlb:ShadowContrast,ptin:_ShadowContrast,varname:_ShadowContrast,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Vector1,id:7331,x:26934,y:35216,varname:node_7331,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:2982,x:25579,y:35062,varname:node_2982,prsc:2|IN-3842-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7948,x:27598,y:35019,varname:node_7948,prsc:2,min:0.6,max:1|IN-3265-OUT;n:type:ShaderForge.SFN_Color,id:6436,x:29230,y:34568,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7735,x:29811,y:34632,varname:node_7735,prsc:2|A-6436-RGB,B-1984-OUT,C-120-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1779,x:23620,y:36184,varname:node_1779,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6643-OUT;n:type:ShaderForge.SFN_Append,id:1534,x:23902,y:36199,varname:node_1534,prsc:2|A-1779-R,B-8184-OUT,C-1779-B;n:type:ShaderForge.SFN_Add,id:8184,x:23821,y:35927,varname:node_8184,prsc:2|A-3260-OUT,B-1779-G;n:type:ShaderForge.SFN_Slider,id:3260,x:23443,y:35948,ptovrint:False,ptlb:light,ptin:_light,varname:_light,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Normalize,id:7301,x:24141,y:36186,varname:node_7301,prsc:2|IN-1534-OUT;n:type:ShaderForge.SFN_Slider,id:5805,x:31565,y:34521,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:_Outline,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.001,max:1;n:type:ShaderForge.SFN_Slider,id:120,x:29235,y:34958,ptovrint:False,ptlb:SceneB,ptin:_SceneB,varname:_SceneB,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_ViewVector,id:6643,x:23272,y:36287,varname:node_6643,prsc:2;n:type:ShaderForge.SFN_Color,id:7279,x:25852,y:34675,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:_ShadowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9215687,c2:0.8666667,c3:0.7843138,c4:1;n:type:ShaderForge.SFN_Multiply,id:3358,x:26293,y:34751,varname:node_3358,prsc:2|A-7279-RGB,B-9363-OUT;n:type:ShaderForge.SFN_Multiply,id:5235,x:31869,y:33716,varname:node_5235,prsc:2|A-3178-OUT,B-959-OUT;n:type:ShaderForge.SFN_Vector1,id:5804,x:30314,y:34783,varname:node_5804,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:959,x:30759,y:34546,varname:node_959,prsc:2|A-1274-OUT,B-8824-OUT,GT-9508-RGB,EQ-9508-RGB,LT-5804-OUT;n:type:ShaderForge.SFN_Vector1,id:8824,x:30363,y:34319,varname:node_8824,prsc:2,v1:0.5;proporder:7519-329-3755-9508-5828-5805-5152-7593-9778-617-1119-3802-6580-9486-2864-3842-6436-3260-120-7279;pass:END;sub:END;*/

Shader "AE_Effect/Dissolution_Blend_Toon" {
    Properties {
        _ColorAlpha ("Color&Alpha", Color) = (1,1,1,1)
        _N_mask ("N_mask", Float ) = 0.3
        _T_mask ("T_mask", 2D) = "white" {}
        _C_BYcolor ("C_BYcolor", Color) = (1,0,0,1)
        _N_BY_KD ("N_BY_KD", Float ) = 0.01
        _Outline ("Outline", Range(0, 1)) = 0.001
        _OutlineColor ("OutlineColor", Color) = (0.1176471,0.03921569,0,1)
        _MASK ("MASK", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Float ) = 1
        _Diffuse ("Diffuse", 2D) = "white" {}
        _SpecularBrightness ("SpecularBrightness", Range(0, 2)) = 0.5
        _ShadowRange ("ShadowRange", Float ) = 1
        _SpecularRange ("SpecularRange", Range(0, 1)) = 0.5
        _AS ("AS", Range(0, 3)) = 1.1
        _ShadowThreshlold ("ShadowThreshlold", Range(0, 1)) = 0.4
        _ShadowContrast ("ShadowContrast", Range(0, 1)) = 0.3
        _Color ("Color", Color) = (1,1,1,1)
        _light ("light", Range(-1, 1)) = 0
        _SceneB ("SceneB", Range(0, 5)) = 1
        _ShadowColor ("ShadowColor", Color) = (0.9215687,0.8666667,0.7843138,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _T_mask; uniform float4 _T_mask_ST;
            uniform float4 _ColorAlpha;
            uniform float _N_mask;
            uniform float _N_BY_KD;
            uniform float4 _OutlineColor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Outline;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_Outline,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_1423 = (i.vertexColor.a*_N_mask);
                float4 _T_mask_var = tex2D(_T_mask,TRANSFORM_TEX(i.uv0, _T_mask));
                float node_5746_if_leA = step(node_1423,_T_mask_var.r);
                float node_5746_if_leB = step(_T_mask_var.r,node_1423);
                float node_3073 = 0.0;
                float node_6272 = 1.0;
                float node_5746 = lerp((node_5746_if_leA*node_3073)+(node_5746_if_leB*node_6272),node_6272,node_5746_if_leA*node_5746_if_leB);
                float node_5217_if_leA = step(node_1423,(_T_mask_var.r+_N_BY_KD));
                float node_5217_if_leB = step((_T_mask_var.r+_N_BY_KD),node_1423);
                float node_1274 = (node_5746-lerp((node_5217_if_leA*node_3073)+(node_5217_if_leB*node_6272),node_6272,node_5217_if_leA*node_5217_if_leB));
                clip((_ColorAlpha.a*(_Diffuse_var.a*(node_5746+node_1274))) - 0.5);
                return fixed4(_OutlineColor.rgb,0);
            }
            ENDCG
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _T_mask; uniform float4 _T_mask_ST;
            uniform float4 _ColorAlpha;
            uniform float _N_mask;
            uniform float _N_BY_KD;
            uniform float4 _C_BYcolor;
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _SpecularPower;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _SpecularBrightness;
            uniform float _ShadowRange;
            uniform float _SpecularRange;
            uniform float _AS;
            uniform float _ShadowThreshlold;
            uniform float _ShadowContrast;
            uniform float4 _Color;
            uniform float _light;
            uniform float _SceneB;
            uniform float4 _ShadowColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_1423 = (i.vertexColor.a*_N_mask);
                float4 _T_mask_var = tex2D(_T_mask,TRANSFORM_TEX(i.uv0, _T_mask));
                float node_5746_if_leA = step(node_1423,_T_mask_var.r);
                float node_5746_if_leB = step(_T_mask_var.r,node_1423);
                float node_3073 = 0.0;
                float node_6272 = 1.0;
                float node_5746 = lerp((node_5746_if_leA*node_3073)+(node_5746_if_leB*node_6272),node_6272,node_5746_if_leA*node_5746_if_leB);
                float node_5217_if_leA = step(node_1423,(_T_mask_var.r+_N_BY_KD));
                float node_5217_if_leB = step((_T_mask_var.r+_N_BY_KD),node_1423);
                float node_1274 = (node_5746-lerp((node_5217_if_leA*node_3073)+(node_5217_if_leB*node_6272),node_6272,node_5217_if_leA*node_5217_if_leB));
                clip((_ColorAlpha.a*(_Diffuse_var.a*(node_5746+node_1274))) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float3 node_1779 = viewDirection.rgb;
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                float node_5070 = (pow(max(0,dot(normalize(float3(node_1779.r,(_light+node_1779.g),node_1779.b)),normalDirection)),_AS)-saturate((1.0 - (_MASK_var.r*_ShadowRange))));
                float node_3265_if_leA = step(node_5070,_ShadowThreshlold);
                float node_3265_if_leB = step(_ShadowThreshlold,node_5070);
                float3 node_3358 = (_ShadowColor.rgb*lerp(saturate((_Diffuse_var.rgb*_Diffuse_var.rgb)),_Diffuse_var.rgb,(1.0 - _ShadowContrast)));
                float node_959_if_leA = step(node_1274,0.5);
                float node_959_if_leB = step(0.5,node_1274);
                float3 emissive = (((_ColorAlpha.rgb*(_Color.rgb*(clamp(lerp((node_3265_if_leA*node_3358)+(node_3265_if_leB*1.0),node_3358,node_3265_if_leA*node_3265_if_leB),0.6,1)+(step(_ShadowThreshlold,node_5070)*((_SpecularBrightness*_SpecularBrightness*_MASK_var.g)*step(_SpecularRange,saturate((saturate(max(0,dot(halfDirection,i.normalDir)))*(_MASK_var.b*_SpecularPower)))))))*_SceneB))*i.vertexColor.rgb)*lerp((node_959_if_leA*1.0)+(node_959_if_leB*_C_BYcolor.rgb),_C_BYcolor.rgb,node_959_if_leA*node_959_if_leB));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _T_mask; uniform float4 _T_mask_ST;
            uniform float4 _ColorAlpha;
            uniform float _N_mask;
            uniform float _N_BY_KD;
            uniform float4 _C_BYcolor;
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _SpecularPower;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _SpecularBrightness;
            uniform float _ShadowRange;
            uniform float _SpecularRange;
            uniform float _AS;
            uniform float _ShadowThreshlold;
            uniform float _ShadowContrast;
            uniform float4 _Color;
            uniform float _light;
            uniform float _SceneB;
            uniform float4 _ShadowColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_1423 = (i.vertexColor.a*_N_mask);
                float4 _T_mask_var = tex2D(_T_mask,TRANSFORM_TEX(i.uv0, _T_mask));
                float node_5746_if_leA = step(node_1423,_T_mask_var.r);
                float node_5746_if_leB = step(_T_mask_var.r,node_1423);
                float node_3073 = 0.0;
                float node_6272 = 1.0;
                float node_5746 = lerp((node_5746_if_leA*node_3073)+(node_5746_if_leB*node_6272),node_6272,node_5746_if_leA*node_5746_if_leB);
                float node_5217_if_leA = step(node_1423,(_T_mask_var.r+_N_BY_KD));
                float node_5217_if_leB = step((_T_mask_var.r+_N_BY_KD),node_1423);
                float node_1274 = (node_5746-lerp((node_5217_if_leA*node_3073)+(node_5217_if_leB*node_6272),node_6272,node_5217_if_leA*node_5217_if_leB));
                clip((_ColorAlpha.a*(_Diffuse_var.a*(node_5746+node_1274))) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _T_mask; uniform float4 _T_mask_ST;
            uniform float4 _ColorAlpha;
            uniform float _N_mask;
            uniform float _N_BY_KD;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_1423 = (i.vertexColor.a*_N_mask);
                float4 _T_mask_var = tex2D(_T_mask,TRANSFORM_TEX(i.uv0, _T_mask));
                float node_5746_if_leA = step(node_1423,_T_mask_var.r);
                float node_5746_if_leB = step(_T_mask_var.r,node_1423);
                float node_3073 = 0.0;
                float node_6272 = 1.0;
                float node_5746 = lerp((node_5746_if_leA*node_3073)+(node_5746_if_leB*node_6272),node_6272,node_5746_if_leA*node_5746_if_leB);
                float node_5217_if_leA = step(node_1423,(_T_mask_var.r+_N_BY_KD));
                float node_5217_if_leB = step((_T_mask_var.r+_N_BY_KD),node_1423);
                float node_1274 = (node_5746-lerp((node_5217_if_leA*node_3073)+(node_5217_if_leB*node_6272),node_6272,node_5217_if_leA*node_5217_if_leB));
                clip((_ColorAlpha.a*(_Diffuse_var.a*(node_5746+node_1274))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
