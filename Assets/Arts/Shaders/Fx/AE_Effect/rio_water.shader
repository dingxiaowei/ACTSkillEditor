// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35720,y:33936,varname:node_3138,prsc:2|emission-3366-OUT,alpha-9377-A,clip-7140-OUT,voffset-9305-OUT;n:type:ShaderForge.SFN_NormalVector,id:446,x:31500,y:35291,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:5532,x:32020,y:35160,varname:node_5532,prsc:2,dt:1|A-5489-OUT,B-446-OUT;n:type:ShaderForge.SFN_Clamp01,id:6060,x:32274,y:35230,varname:node_6060,prsc:2|IN-5532-OUT;n:type:ShaderForge.SFN_Tex2d,id:3440,x:31070,y:34578,ptovrint:False,ptlb:MASK,ptin:_MASK,varname:node_5991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7066,x:32189,y:35458,varname:node_7066,prsc:2|A-3440-B,B-485-OUT;n:type:ShaderForge.SFN_ValueProperty,id:485,x:31680,y:35626,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_2551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:5195,x:32858,y:35193,varname:node_5195,prsc:2|IN-3412-OUT;n:type:ShaderForge.SFN_If,id:9518,x:33147,y:35242,varname:node_9518,prsc:2|A-5195-OUT,B-9979-OUT,GT-3505-OUT,EQ-2710-OUT,LT-2710-OUT;n:type:ShaderForge.SFN_Vector1,id:3505,x:32708,y:35667,varname:node_3505,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2710,x:32708,y:35543,varname:node_2710,prsc:2,v1:0;n:type:ShaderForge.SFN_NormalVector,id:2031,x:31958,y:34396,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:4181,x:32300,y:34203,varname:node_4181,prsc:2,dt:0|A-1145-OUT,B-2031-OUT;n:type:ShaderForge.SFN_Subtract,id:5806,x:33516,y:34319,varname:node_5806,prsc:2|A-3032-OUT,B-7159-OUT;n:type:ShaderForge.SFN_Subtract,id:7159,x:32275,y:34847,varname:node_7159,prsc:2|A-5594-OUT,B-3440-G;n:type:ShaderForge.SFN_If,id:6241,x:34043,y:33859,cmnt:Shadow,varname:node_6241,prsc:2|A-5806-OUT,B-1764-OUT,GT-645-OUT,EQ-5884-OUT,LT-5884-OUT;n:type:ShaderForge.SFN_Vector1,id:645,x:33477,y:33965,varname:node_645,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:1764,x:33170,y:34541,ptovrint:False,ptlb:ShadowThreshlold,ptin:_ShadowThreshlold,varname:node_7460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:1929,x:31982,y:33567,varname:node_1929,prsc:2|A-3440-G;n:type:ShaderForge.SFN_Clamp,id:3090,x:32268,y:33556,varname:node_3090,prsc:2;n:type:ShaderForge.SFN_Vector1,id:7830,x:31900,y:33800,varname:node_7830,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:9572,x:32388,y:33756,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diff_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:5695,x:31900,y:33877,varname:node_5695,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Blend,id:8941,x:32582,y:33398,varname:node_8941,prsc:2,blmd:10,clmp:True|DST-9572-RGB;n:type:ShaderForge.SFN_Multiply,id:2070,x:32967,y:33351,varname:node_2070,prsc:2|A-9572-RGB,B-8062-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8062,x:32898,y:33594,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_364,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3406,x:34272,y:33526,varname:node_3406,prsc:2|A-2070-OUT,B-6241-OUT;n:type:ShaderForge.SFN_Multiply,id:7125,x:34124,y:35065,varname:node_7125,prsc:2|A-7126-OUT,B-9518-OUT;n:type:ShaderForge.SFN_Multiply,id:7126,x:33721,y:34966,varname:node_7126,prsc:2|A-996-OUT,B-996-OUT,C-3440-R;n:type:ShaderForge.SFN_Multiply,id:8341,x:34391,y:34429,cmnt:Specular,varname:node_8341,prsc:2|A-6071-OUT,B-7125-OUT;n:type:ShaderForge.SFN_Add,id:9678,x:34916,y:33870,varname:node_9678,prsc:2|A-3406-OUT,B-8341-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:5489,x:31500,y:35048,varname:node_5489,prsc:2;n:type:ShaderForge.SFN_LightVector,id:9553,x:31800,y:34199,varname:node_9553,prsc:2;n:type:ShaderForge.SFN_Normalize,id:6333,x:32065,y:34203,varname:node_6333,prsc:2|IN-9553-OUT;n:type:ShaderForge.SFN_Color,id:5472,x:33175,y:33418,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:node_9093,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_If,id:6071,x:33831,y:34576,varname:node_6071,prsc:2|A-5806-OUT,B-1764-OUT,GT-6180-OUT,EQ-1109-OUT,LT-1109-OUT;n:type:ShaderForge.SFN_Vector1,id:6180,x:33557,y:34753,varname:node_6180,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1109,x:33557,y:34829,varname:node_1109,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:996,x:33304,y:34922,ptovrint:False,ptlb:SpecularBrightness,ptin:_SpecularBrightness,varname:node_5957,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_ValueProperty,id:5594,x:32001,y:34784,ptovrint:False,ptlb:ShadowRange,ptin:_ShadowRange,varname:node_2556,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:5884,x:33713,y:33765,varname:node_5884,prsc:2|A-7888-OUT,B-7743-OUT,T-937-OUT;n:type:ShaderForge.SFN_Slider,id:937,x:33158,y:33901,ptovrint:False,ptlb:ShadowContrast,ptin:_ShadowContrast,varname:node_996,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Clamp,id:7743,x:33205,y:33737,varname:node_7743,prsc:2|IN-2070-OUT,MIN-6762-OUT,MAX-1795-OUT;n:type:ShaderForge.SFN_Vector1,id:6762,x:32947,y:33737,varname:node_6762,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Vector1,id:1795,x:32947,y:33812,varname:node_1795,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Slider,id:4153,x:31379,y:33465,ptovrint:False,ptlb:Dark_R,ptin:_Dark_R,varname:node_4153,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:0.5;n:type:ShaderForge.SFN_Slider,id:9979,x:32572,y:35423,ptovrint:False,ptlb:SpecularRange,ptin:_SpecularRange,varname:node_9979,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_LightAttenuation,id:483,x:32434,y:34450,varname:node_483,prsc:2;n:type:ShaderForge.SFN_Multiply,id:863,x:32627,y:34290,varname:node_863,prsc:2|A-4181-OUT,B-483-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1321,x:32831,y:34195,ptovrint:False,ptlb:Shadow,ptin:_Shadow,varname:node_1321,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4181-OUT,B-863-OUT;n:type:ShaderForge.SFN_Multiply,id:5911,x:33485,y:33537,varname:node_5911,prsc:2|A-5472-RGB,B-9572-RGB,C-4286-OUT;n:type:ShaderForge.SFN_Multiply,id:3412,x:32540,y:35195,varname:node_3412,prsc:2|A-6060-OUT,B-7066-OUT;n:type:ShaderForge.SFN_Add,id:7140,x:31569,y:34715,varname:node_7140,prsc:2|A-3440-A,B-4248-OUT;n:type:ShaderForge.SFN_Slider,id:4248,x:31171,y:34899,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_4248,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4286,x:33175,y:33647,ptovrint:False,ptlb:ShadowLight,ptin:_ShadowLight,varname:node_4286,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:657,x:33029,y:34291,varname:node_657,prsc:2|A-1321-OUT,B-917-OUT;n:type:ShaderForge.SFN_Slider,id:917,x:32627,y:34452,ptovrint:False,ptlb:AS,ptin:_AS,varname:node_917,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Clamp01,id:3032,x:33235,y:34219,varname:node_3032,prsc:2|IN-657-OUT;n:type:ShaderForge.SFN_Clamp,id:7888,x:33781,y:33544,varname:node_7888,prsc:2|IN-5911-OUT,MIN-3565-OUT,MAX-9767-OUT;n:type:ShaderForge.SFN_Vector1,id:3565,x:33590,y:33476,varname:node_3565,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Vector1,id:9767,x:33614,y:33616,varname:node_9767,prsc:2,v1:1;n:type:ShaderForge.SFN_ViewReflectionVector,id:1145,x:31951,y:34009,varname:node_1145,prsc:2;n:type:ShaderForge.SFN_Color,id:9377,x:34458,y:33835,ptovrint:False,ptlb:diffuse_color,ptin:_diffuse_color,varname:node_9377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_NormalVector,id:4418,x:34886,y:34386,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:9305,x:35211,y:34498,varname:node_9305,prsc:2|A-4418-OUT,B-9623-OUT;n:type:ShaderForge.SFN_Slider,id:9623,x:34847,y:34619,ptovrint:False,ptlb:offset,ptin:_offset,varname:node_9623,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:3366,x:35178,y:33753,varname:node_3366,prsc:2|A-9678-OUT,B-9377-RGB;proporder:9623-9377-8062-4153-9572-3440-485-9979-996-1764-5594-4286-5472-937-1321-4248-917;pass:END;sub:END;*/

Shader "Shader Forge/rio_water" {
    Properties {
        _offset ("offset", Range(0, 10)) = 0
        _diffuse_color ("diffuse_color", Color) = (1,1,1,1)
        _Brightness ("Brightness", Float ) = 1
        _Dark_R ("Dark_R", Range(0, 0.5)) = 0.5
        _Diffuse ("Diffuse", 2D) = "white" {}
        _MASK ("MASK", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Float ) = 1
        _SpecularRange ("SpecularRange", Range(0, 1)) = 0.5
        _SpecularBrightness ("SpecularBrightness", Range(0, 2)) = 0.5
        _ShadowThreshlold ("ShadowThreshlold", Range(0, 1)) = 0
        _ShadowRange ("ShadowRange", Float ) = 1
        _ShadowLight ("ShadowLight", Range(0, 2)) = 1
        _ShadowColor ("ShadowColor", Color) = (1,1,1,1)
        _ShadowContrast ("ShadowContrast", Range(0, 1)) = 1
        [MaterialToggle] _Shadow ("Shadow", Float ) = 0
        _Alpha ("Alpha", Range(0, 1)) = 0
        _AS ("AS", Range(0, 3)) = 1
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _SpecularPower;
            uniform float _ShadowThreshlold;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Brightness;
            uniform float4 _ShadowColor;
            uniform float _SpecularBrightness;
            uniform float _ShadowRange;
            uniform float _ShadowContrast;
            uniform float _SpecularRange;
            uniform fixed _Shadow;
            uniform float _Alpha;
            uniform float _ShadowLight;
            uniform float _AS;
            uniform float4 _diffuse_color;
            uniform float _offset;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_offset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                clip((_MASK_var.a+_Alpha) - 0.5);
////// Lighting:
                float attenuation = 1;
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_2070 = (_Diffuse_var.rgb*_Brightness);
                float node_4181 = dot(viewReflectDirection,i.normalDir);
                float node_5806 = (saturate((lerp( node_4181, (node_4181*attenuation), _Shadow )*_AS))-(_ShadowRange-_MASK_var.g));
                float node_6241_if_leA = step(node_5806,_ShadowThreshlold);
                float node_6241_if_leB = step(_ShadowThreshlold,node_5806);
                float3 node_5884 = lerp(clamp((_ShadowColor.rgb*_Diffuse_var.rgb*_ShadowLight),0.4,1.0),clamp(node_2070,0.6,0.75),_ShadowContrast);
                float node_6071_if_leA = step(node_5806,_ShadowThreshlold);
                float node_6071_if_leB = step(_ShadowThreshlold,node_5806);
                float node_1109 = 0.0;
                float node_9518_if_leA = step(saturate((saturate(max(0,dot(viewReflectDirection,i.normalDir)))*(_MASK_var.b*_SpecularPower))),_SpecularRange);
                float node_9518_if_leB = step(_SpecularRange,saturate((saturate(max(0,dot(viewReflectDirection,i.normalDir)))*(_MASK_var.b*_SpecularPower))));
                float node_2710 = 0.0;
                float3 emissive = (((node_2070*lerp((node_6241_if_leA*node_5884)+(node_6241_if_leB*1.0),node_5884,node_6241_if_leA*node_6241_if_leB))+(lerp((node_6071_if_leA*node_1109)+(node_6071_if_leB*1.0),node_1109,node_6071_if_leA*node_6071_if_leB)*((_SpecularBrightness*_SpecularBrightness*_MASK_var.r)*lerp((node_9518_if_leA*node_2710)+(node_9518_if_leB*1.0),node_2710,node_9518_if_leA*node_9518_if_leB))))*_diffuse_color.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,_diffuse_color.a);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _SpecularPower;
            uniform float _ShadowThreshlold;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Brightness;
            uniform float4 _ShadowColor;
            uniform float _SpecularBrightness;
            uniform float _ShadowRange;
            uniform float _ShadowContrast;
            uniform float _SpecularRange;
            uniform fixed _Shadow;
            uniform float _Alpha;
            uniform float _ShadowLight;
            uniform float _AS;
            uniform float4 _diffuse_color;
            uniform float _offset;
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
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_offset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                clip((_MASK_var.a+_Alpha) - 0.5);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * _diffuse_color.a,0);
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
            #pragma only_renderers d3d9 d3d11 glcore gles metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _Alpha;
            uniform float _offset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_offset);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                clip((_MASK_var.a+_Alpha) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
