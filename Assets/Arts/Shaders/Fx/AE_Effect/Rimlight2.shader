// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33780,y:32746,varname:node_9361,prsc:2|custl-9844-OUT;n:type:ShaderForge.SFN_Fresnel,id:1761,x:32435,y:33111,varname:node_1761,prsc:2;n:type:ShaderForge.SFN_Power,id:2823,x:32615,y:33203,varname:node_2823,prsc:2|VAL-1761-OUT,EXP-5666-OUT;n:type:ShaderForge.SFN_Exp,id:5666,x:32435,y:33285,varname:node_5666,prsc:2,et:0|IN-9033-OUT;n:type:ShaderForge.SFN_Slider,id:9033,x:32006,y:33277,ptovrint:False,ptlb:Range,ptin:_Range,varname:node_9033,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_DepthBlend,id:4593,x:32803,y:33053,varname:node_4593,prsc:2|DIST-2823-OUT;n:type:ShaderForge.SFN_OneMinus,id:3499,x:32980,y:33053,varname:node_3499,prsc:2|IN-4593-OUT;n:type:ShaderForge.SFN_Color,id:5789,x:32886,y:32571,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5789,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6433,x:33301,y:32693,varname:node_6433,prsc:2|A-7517-RGB,B-7517-A,C-49-OUT,D-2516-OUT,E-5789-RGB;n:type:ShaderForge.SFN_Tex2d,id:8820,x:32704,y:32754,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_8820,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:7517,x:33028,y:32451,varname:node_7517,prsc:2;n:type:ShaderForge.SFN_Multiply,id:49,x:32907,y:32771,varname:node_49,prsc:2|A-8820-RGB,B-8820-A;n:type:ShaderForge.SFN_Color,id:8147,x:32803,y:33213,ptovrint:False,ptlb:Iintersect color,ptin:_Iintersectcolor,varname:node_8147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8092,x:33256,y:33125,varname:node_8092,prsc:2|A-3499-OUT,B-8147-RGB,C-3011-OUT,D-379-OUT;n:type:ShaderForge.SFN_Add,id:9844,x:33424,y:32907,varname:node_9844,prsc:2|A-6433-OUT,B-8092-OUT;n:type:ShaderForge.SFN_Slider,id:2516,x:32930,y:32934,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_2516,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Slider,id:3011,x:32803,y:33376,ptovrint:False,ptlb:Iintersect range,ptin:_Iintersectrange,varname:_Brightness_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Tex2d,id:3721,x:32838,y:33479,ptovrint:False,ptlb:Texture_copy,ptin:_Texture_copy,varname:_Texture_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:379,x:33041,y:33496,varname:node_379,prsc:2|A-3721-RGB,B-3721-A;proporder:9033-5789-8820-8147-2516-3011-3721;pass:END;sub:END;*/

Shader "AE_Effect/Rimlight2" {
    Properties {
        _Range ("Range", Range(0, 1)) = 0
        _Color ("Color", Color) = (1,1,1,1)
        _Texture ("Texture", 2D) = "white" {}
        _Iintersectcolor ("Iintersect color", Color) = (1,1,1,1)
        _Brightness ("Brightness", Range(0, 10)) = 1
        _Iintersectrange ("Iintersect range", Range(0, 10)) = 1
        _Texture_copy ("Texture_copy", 2D) = "white" {}
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
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu   
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _Range;
            uniform float4 _Color;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Iintersectcolor;
            uniform float _Brightness;
            uniform float _Iintersectrange;
            uniform sampler2D _Texture_copy; uniform float4 _Texture_copy_ST;
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
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float4 _Texture_copy_var = tex2D(_Texture_copy,TRANSFORM_TEX(i.uv0, _Texture_copy));
                float3 finalColor = ((i.vertexColor.rgb*i.vertexColor.a*(_Texture_var.rgb*_Texture_var.a)*_Brightness*_Color.rgb)+((1.0 - saturate((sceneZ-partZ)/pow((1.0-max(0,dot(normalDirection, viewDirection))),exp(_Range))))*_Iintersectcolor.rgb*_Iintersectrange*(_Texture_copy_var.rgb*_Texture_copy_var.a)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
