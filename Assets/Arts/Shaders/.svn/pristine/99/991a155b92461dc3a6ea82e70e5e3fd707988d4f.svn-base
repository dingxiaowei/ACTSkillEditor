Shader "Shader Forge/Toon_Basic" {
    Properties {
        _Brightness ("Brightness", Float ) = 1
		_ZDepth ("ZDepth", Range(-1, 1)) = 0
		_Alpha("Alpha",Range(0,1))=1
        _OutlineColor ("OutlineColor", Color) = (0.1176471,0.03921569,0,1)
        _Outline ("Outline", Float ) = 0.001
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
        _AS ("AS", Range(0, 3)) = 1
        _alpha_slider ("alpha_slider", Range(-1, 1)) = 0
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
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="LevelHigh"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            Blend SrcAlpha OneMinusSrcAlpha 
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Outline;
            uniform float4 _OutlineColor;
            uniform float _alpha_slider;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Dissovle;
            uniform fixed _DSwitch;
			uniform float _Alpha;
			uniform float _ZDepth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_Outline,1) );
				o.pos.z-= (_ZDepth*_ProjectionParams.x);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(i.uv0, _NoiseTexture));
                float node_2545 = pow((((_NoiseTexture_var.r+0.134)*_Dissovle)*4.0),100.0);
                clip(lerp( _Diffuse_var.a, ((_Diffuse_var.a+_alpha_slider)*clamp(node_2545,0,1)), _DSwitch ) - 0.5);
				if(_Alpha<=0)
					discard;
                return fixed4(_OutlineColor.rgb*_Alpha,_Alpha);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
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
            uniform float _ShadowLight;
            uniform float _AS;
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
			uniform float _Alpha;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(i.uv0, _NoiseTexture));
                float node_2545 = pow((((_NoiseTexture_var.r+0.134)*_Dissovle)*4.0),100.0);
                clip(lerp( _Diffuse_var.a, ((_Diffuse_var.a+_alpha_slider)*clamp(node_2545,0,1)), _DSwitch ) - 0.5);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float3 node_2070 = (_Diffuse_var.rgb*_Brightness);
                float node_4181 = dot(normalize(viewReflectDirection),i.normalDir);
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                float node_5806 = (saturate((lerp( node_4181, (node_4181*attenuation), _Shadow )*_AS))-(_ShadowRange-_MASK_var.r));
                float node_6241_if_leA = step(node_5806,_ShadowThreshlold);
                float node_6241_if_leB = step(_ShadowThreshlold,node_5806);
                float3 node_5884 = lerp(clamp((_ShadowColor.rgb*_Diffuse_var.rgb*_ShadowLight),0.4,1.0),clamp(node_2070,0.6,0.75),_ShadowContrast);
                float node_6071_if_leA = step(node_5806,_ShadowThreshlold);
                float node_6071_if_leB = step(_ShadowThreshlold,node_5806);
                float node_1109 = 0.0;
                float node_9518_if_leA = step(saturate((saturate(max(0,dot(viewReflectDirection,i.normalDir)))*(_MASK_var.b*_SpecularPower))),_SpecularRange);
                float node_9518_if_leB = step(_SpecularRange,saturate((saturate(max(0,dot(viewReflectDirection,i.normalDir)))*(_MASK_var.b*_SpecularPower))));
                float node_2710 = 0.0;
                float node_6526_if_leA = step(_Dissovle_Width,node_2545);
                float node_6526_if_leB = step(node_2545,_Dissovle_Width);
                float node_4952 = 0.0;
                float node_2948_if_leA = step(_Fresnel_width_A,pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_width_B));
                float node_2948_if_leB = step(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Fresnel_width_B),_Fresnel_width_A);
                float node_5303 = 0.0;
                float3 emissive = ((node_2070*lerp((node_6241_if_leA*node_5884)+(node_6241_if_leB*1.0),node_5884,node_6241_if_leA*node_6241_if_leB))+(lerp((node_6071_if_leA*node_1109)+(node_6071_if_leB*1.0),node_1109,node_6071_if_leA*node_6071_if_leB)*((_SpecularBrightness*_SpecularBrightness*_MASK_var.g)*lerp((node_9518_if_leA*node_2710)+(node_9518_if_leB*1.0),node_2710,node_9518_if_leA*node_9518_if_leB)))+lerp( 0.0, (lerp((node_6526_if_leA*node_4952)+(node_6526_if_leB*1.0),node_4952,node_6526_if_leA*node_6526_if_leB)*_Dissovle_Color.rgb*2.0), _DColor_Switch )+lerp( 0.0, (lerp((node_2948_if_leA*1.0)+(node_2948_if_leB*node_5303),node_5303,node_2948_if_leA*node_2948_if_leB)*_Fresnel_Color.rgb), _Fresnel_Switch ));
                float3 finalColor = emissive;
				if(_Alpha<=0)
					discard;	
                return fixed4(finalColor,_Alpha);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
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
            uniform float _ShadowLight;
            uniform float _AS;
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
			uniform float _Alpha;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(i.uv0, _NoiseTexture));
                float node_2545 = pow((((_NoiseTexture_var.r+0.134)*_Dissovle)*4.0),100.0);
                clip(lerp( _Diffuse_var.a, ((_Diffuse_var.a+_alpha_slider)*clamp(node_2545,0,1)), _DSwitch ) - 0.5);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
			    if(_Alpha<=0)
					discard;	
                return fixed4(finalColor * _Alpha,0);
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
            Blend SrcAlpha OneMinusSrcAlpha
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _alpha_slider;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _Dissovle;
            uniform fixed _DSwitch;
			float _Alpha;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(i.uv0, _NoiseTexture));
                float node_2545 = pow((((_NoiseTexture_var.r+0.134)*_Dissovle)*4.0),100.0);
                clip(lerp( _Diffuse_var.a, ((_Diffuse_var.a+_alpha_slider)*clamp(node_2545,0,1)), _DSwitch ) - 0.5);
				clip(_Alpha-0.1);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
