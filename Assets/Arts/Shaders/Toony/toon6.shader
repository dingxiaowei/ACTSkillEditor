// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33508,y:32709,varname:node_3138,prsc:2|emission-9678-OUT,alpha-9572-A,clip-5208-OUT,olwid-5808-OUT,olcol-9576-OUT;n:type:ShaderForge.SFN_NormalVector,id:2031,x:28822,y:29806,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:9572,x:29112,y:30899,ptovrint:False,ptlb:W,ptin:_W,varname:_Diff_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:9678,x:32335,y:31615,varname:node_9678,prsc:2|A-7277-OUT,B-3005-OUT,C-9572-RGB;n:type:ShaderForge.SFN_ValueProperty,id:5808,x:32707,y:32548,ptovrint:False,ptlb:O,ptin:_O,varname:node_5808,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.001;n:type:ShaderForge.SFN_Color,id:5493,x:32611,y:33133,ptovrint:False,ptlb:OCB,ptin:_OCB,varname:node_5493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8823529,c2:0.9026369,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:4486,x:31005,y:33453,varname:node_4486,prsc:2|A-9572-A,B-3899-OUT;n:type:ShaderForge.SFN_Slider,id:3899,x:30306,y:33639,ptovrint:False,ptlb:alpha_slider,ptin:_alpha_slider,varname:node_4098,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:9948,x:30073,y:34002,ptovrint:False,ptlb:NoiseTexture,ptin:_NoiseTexture,varname:node_1460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8715-OUT;n:type:ShaderForge.SFN_Slider,id:9777,x:30281,y:34320,ptovrint:False,ptlb:Dissovle,ptin:_Dissovle,varname:node_5861,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Multiply,id:9898,x:30683,y:34055,varname:node_9898,prsc:2|A-2908-OUT,B-9777-OUT;n:type:ShaderForge.SFN_Vector1,id:6760,x:30672,y:34328,varname:node_6760,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:7301,x:30903,y:34055,varname:node_7301,prsc:2|A-9898-OUT,B-6760-OUT;n:type:ShaderForge.SFN_Power,id:2545,x:31198,y:34051,varname:node_2545,prsc:2|VAL-7301-OUT,EXP-7156-OUT;n:type:ShaderForge.SFN_Vector1,id:7156,x:30967,y:34336,varname:node_7156,prsc:2,v1:100;n:type:ShaderForge.SFN_If,id:6526,x:31491,y:33623,varname:node_6526,prsc:2|A-283-OUT,B-2545-OUT,GT-7302-OUT,EQ-4952-OUT,LT-4952-OUT;n:type:ShaderForge.SFN_Slider,id:283,x:31018,y:33662,ptovrint:False,ptlb:Dissovle_Width,ptin:_Dissovle_Width,varname:node_8022,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6.796117,max:100;n:type:ShaderForge.SFN_Vector1,id:7302,x:31096,y:33745,varname:node_7302,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4952,x:31096,y:33862,varname:node_4952,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:7934,x:31735,y:33747,varname:node_7934,prsc:2|A-6526-OUT,B-191-RGB,C-616-OUT;n:type:ShaderForge.SFN_Color,id:191,x:31491,y:33791,ptovrint:False,ptlb:Dissovle_Color,ptin:_Dissovle_Color,varname:node_1102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Vector1,id:616,x:31491,y:33964,varname:node_616,prsc:2,v1:2;n:type:ShaderForge.SFN_ConstantClamp,id:39,x:31950,y:34052,varname:node_39,prsc:2,min:0,max:1|IN-2545-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7277,x:32026,y:33662,ptovrint:False,ptlb:DColor_Switch,ptin:_DColor_Switch,varname:node_2806,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3637-OUT,B-7934-OUT;n:type:ShaderForge.SFN_Vector1,id:3637,x:31735,y:33623,varname:node_3637,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:5208,x:32580,y:33562,ptovrint:False,ptlb:DSwitch,ptin:_DSwitch,varname:node_563,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9572-A,B-4121-OUT;n:type:ShaderForge.SFN_Add,id:2908,x:30451,y:34027,varname:node_2908,prsc:2|A-9948-R,B-669-OUT;n:type:ShaderForge.SFN_Vector1,id:669,x:30374,y:34174,varname:node_669,prsc:2,v1:0.134;n:type:ShaderForge.SFN_Multiply,id:4121,x:32217,y:33809,varname:node_4121,prsc:2|A-4486-OUT,B-39-OUT;n:type:ShaderForge.SFN_Fresnel,id:3856,x:31315,y:29096,varname:node_3856,prsc:2|NRM-2031-OUT,EXP-4379-OUT;n:type:ShaderForge.SFN_Slider,id:4379,x:30913,y:29276,ptovrint:False,ptlb:Fresnel_width_B,ptin:_Fresnel_width_B,varname:node_2855,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_If,id:2948,x:32266,y:29202,varname:node_2948,prsc:2|A-2382-OUT,B-3856-OUT,GT-5303-OUT,EQ-5303-OUT,LT-4701-OUT;n:type:ShaderForge.SFN_Vector1,id:5303,x:31522,y:29275,varname:node_5303,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4701,x:31522,y:29366,varname:node_4701,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4801,x:32478,y:29572,varname:node_4801,prsc:2|A-2948-OUT,B-2134-RGB;n:type:ShaderForge.SFN_Color,id:2134,x:31655,y:29605,ptovrint:False,ptlb:Fresnel_Color,ptin:_Fresnel_Color,varname:node_2134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:3005,x:32700,y:30210,ptovrint:False,ptlb:Fresnel_Switch,ptin:_Fresnel_Switch,varname:node_3005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-560-OUT,B-4801-OUT;n:type:ShaderForge.SFN_Vector1,id:560,x:32189,y:30121,varname:node_560,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:2382,x:31585,y:29043,ptovrint:False,ptlb:Fresnel_width_A,ptin:_Fresnel_width_A,varname:node_2382,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5242718,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:9576,x:33083,y:32949,ptovrint:False,ptlb:OSwitch,ptin:_OSwitch,varname:node_9576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8137-RGB,B-9060-OUT;n:type:ShaderForge.SFN_Multiply,id:9060,x:32876,y:33054,varname:node_9060,prsc:2|A-9572-RGB,B-5493-RGB,C-9572-RGB;n:type:ShaderForge.SFN_Color,id:8137,x:32595,y:32896,ptovrint:False,ptlb:OCA,ptin:_OCA,varname:_OutlineColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1176471,c2:0.03921569,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:2368,x:29683,y:33932,varname:node_2368,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_SwitchProperty,id:8715,x:29948,y:33856,ptovrint:False,ptlb:2UV,ptin:_2UV,varname:node_8715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7298-UVOUT,B-2368-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7298,x:29683,y:34161,varname:node_7298,prsc:2,uv:0,uaff:False;proporder:8137-5808-9572-3899-8715-9948-9777-5208-283-7277-191-3005-2134-2382-4379-9576-5493;pass:END;sub:END;*/

Shader "Shader Forge/Dissovle" {
    Properties {
        _OCA ("OCA", Color) = (0.1176471,0.03921569,0,1)
        _O ("O", Float ) = 0.001
        _W ("W", 2D) = "white" {}
        _alpha_slider ("alpha_slider", Range(-1, 1)) = 0
        [MaterialToggle] _2UV ("2UV", Float ) = 0
        _NoiseTexture ("NoiseTexture", 2D) = "white" {}
        _Dissovle ("Dissovle", Range(0, 2)) = 2
        [MaterialToggle] _DSwitch ("DSwitch", Float ) = 0
        _Dissovle_Width ("Dissovle_Width", Range(0, 100)) = 6.796117
        [MaterialToggle] _DColor_Switch ("DColor_Switch", Float ) = 0
        _Dissovle_Color ("Dissovle_Color", Color) = (1,0,0,1)
        [MaterialToggle] _Fresnel_Switch ("Fresnel_Switch", Float ) = 0
        _Fresnel_Color ("Fresnel_Color", Color) = (1,1,1,1)
        _Fresnel_width_A ("Fresnel_width_A", Range(0, 1)) = 0.5242718
        _Fresnel_width_B ("Fresnel_width_B", Range(0, 10)) = 1
        [MaterialToggle] _OSwitch ("OSwitch", Float ) = 0.1176471
        _OCB ("OCB", Color) = (0.8823529,0.9026369,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _W; uniform float4 _W_ST;
            uniform float _O;
            uniform float4 _OCB;
            uniform float _alpha_slider;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Dissovle;
            uniform fixed _DSwitch;
            uniform fixed _OSwitch;
            uniform float4 _OCA;
            uniform fixed _2UV;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_O,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _W_var = tex2D(_W,TRANSFORM_TEX(i.uv0, _W));
                float2 _2UV_var = lerp( i.uv0, i.uv1, _2UV );
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(_2UV_var, _NoiseTexture));
                float node_2545 = pow((((_NoiseTexture_var.r+0.134)*_Dissovle)*4.0),100.0);
                clip(lerp( _W_var.a, ((_W_var.a+_alpha_slider)*clamp(node_2545,0,1)), _DSwitch ) - 0.5);
                return fixed4(lerp( _OCA.rgb, (_W_var.rgb*_OCB.rgb*_W_var.rgb), _OSwitch ),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _W; uniform float4 _W_ST;
            uniform float _alpha_slider;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Dissovle;
            uniform float _Dissovle_Width;
            uniform float4 _Dissovle_Color;
            uniform fixed _DColor_Switch;
            uniform fixed _DSwitch;
            uniform float _Fresnel_width_B;
            uniform float4 _Fresnel_Color;
            uniform fixed _Fresnel_Switch;
            uniform float _Fresnel_width_A;
            uniform fixed _2UV;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _W_var = tex2D(_W,TRANSFORM_TEX(i.uv0, _W));
                float2 _2UV_var = lerp( i.uv0, i.uv1, _2UV );
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(_2UV_var, _NoiseTexture));
                float node_2545 = pow((((_NoiseTexture_var.r+0.134)*_Dissovle)*4.0),100.0);
                clip(lerp( _W_var.a, ((_W_var.a+_alpha_slider)*clamp(node_2545,0,1)), _DSwitch ) - 0.5);
////// Lighting:
////// Emissive:
                float node_6526_if_leA = step(_Dissovle_Width,node_2545);
                float node_6526_if_leB = step(node_2545,_Dissovle_Width);
                float node_4952 = 0.0;
                float node_2948_if_leA = step(_Fresnel_width_A,pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_width_B));
                float node_2948_if_leB = step(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_width_B),_Fresnel_width_A);
                float node_5303 = 0.0;
                float3 emissive = (lerp( 0.0, (lerp((node_6526_if_leA*node_4952)+(node_6526_if_leB*1.0),node_4952,node_6526_if_leA*node_6526_if_leB)*_Dissovle_Color.rgb*2.0), _DColor_Switch )+lerp( 0.0, (lerp((node_2948_if_leA*1.0)+(node_2948_if_leB*node_5303),node_5303,node_2948_if_leA*node_2948_if_leB)*_Fresnel_Color.rgb), _Fresnel_Switch )+_W_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,_W_var.a);
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _W; uniform float4 _W_ST;
            uniform float _alpha_slider;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Dissovle;
            uniform fixed _DSwitch;
            uniform fixed _2UV;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _W_var = tex2D(_W,TRANSFORM_TEX(i.uv0, _W));
                float2 _2UV_var = lerp( i.uv0, i.uv1, _2UV );
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(_2UV_var, _NoiseTexture));
                float node_2545 = pow((((_NoiseTexture_var.r+0.134)*_Dissovle)*4.0),100.0);
                clip(lerp( _W_var.a, ((_W_var.a+_alpha_slider)*clamp(node_2545,0,1)), _DSwitch ) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
