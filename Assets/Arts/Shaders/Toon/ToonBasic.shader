Shader "Shader Forge/ToonBasic" {
    Properties {	
        _Brightness ("Brightness", Range(0, 2)) = 1
		[MaterialToggle]_EnableOutline ("EnableOutline",float) = 0
        _BodyOutline ("BodyOutline", Color) = (0.4588236,0.3294118,0.3098039,1)
        _OutlineColor ("OutlineColor", Color) = (0.1176471,0.03921569,0,1)
		_OutlineMin ("OutlineMin", Range(0, 0.0005)) = 0.0005
		_OutlineMax ("OutlineMax", Range(0, 0.0015)) = 0.0015
		_OutlineDisNear ("OutlineDisNear", Range(-1, 0)) = 0
		_OutlineDisFar ("OutlineDisFar", Range(0, 4)) = 4
        _Diffuse ("Diffuse", 2D) = "white" {}
        _MASK ("MASK", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Float ) = 1
        _SpecularRange ("SpecularRange", Range(0, 1)) = 0.5
        _SpecularBrightness ("SpecularBrightness", Range(0, 2)) = 0.5
        _ShadowThreshlold ("ShadowThreshlold", Range(0, 1)) = 0
        _Se_Shadow2Threshlold ("Se_Shadow2Threshlold", Range(-1, 1)) = -0.9
        _ShadowRange ("ShadowRange", Float ) = 1
        _ShadowColor ("ShadowColor", Color) = (1,1,1,1)
        _ShadowContrast ("ShadowContrast", Range(0, 1)) = 0.2
        _Alpha ("Alpha", Range(0, 1)) = 0
        _AS ("AS", Range(0, 3)) = 1
        _Body ("Body", Range(0, 1)) = 0
        _LAngle ("LAngle", Range(-1, 1)) = 0
        _ShadowColorBody ("ShadowColor Body", Color) = (0.8156863,0.8036909,0.8036909,1)
		[MaterialToggle]_RimEnable("RimEnable",float)=0
		_RimColor ("RimColor", Color) = (1,1,1,1)
		[MaterialToggle] _Fresnel_Switch ("Fresnel_Switch", Float ) = 0
        _Fresnel_Range ("Fresnel_Range", Range(0, 5)) = 4
        _Fresnel_Power ("Fresnel_Power", Range(0, 1)) = 0.5

        [HideInInspector]_Cutoff ("Alpha Cutoff", Range(0,1)) = 0.5
		[HideInInspector]_LightRotation("LightRotation", Vector) = (0,0,0,0)
		[HideInInspector]_CharPos("CharPos", Vector) = (0,0,0,0)
		[HideInInspector]_CameraViewPos("CameraViewPos", Vector) = (0,0,0,0)
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "Outline"
            Cull Front
			Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
			#pragma multi_compile_fog
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MASK; uniform float4 _MASK_ST;

			uniform float _EnableOutline;
			uniform float _OutlineMin;
			uniform float _OutlineMax;
			uniform float _OutlineDisNear;
			uniform float _OutlineDisFar;
            uniform float4 _OutlineColor;
            uniform float _Alpha;
            uniform float _Body;
            uniform float4 _BodyOutline;
			uniform float4 _CharPos;
			uniform float4 _CameraViewPos;
			uniform float _EnableZDepth;
			uniform float _ZDepth;
			uniform float _L;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
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
				if(_EnableOutline>0)
				{
					float len = length(_CharPos.xz - _CameraViewPos.xz); 
					float r = lerp(0,1,len/(_OutlineDisFar-_OutlineDisNear));
					half3 outline = lerp(_OutlineMin,_OutlineMax,r);
					o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*outline,1));
				}
				else	
				{
					UnityObjectToClipPos(v.vertex);
				}
				UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                clip(_MASK_var.a - 0.5);
                float node_3670 = step(_Body,dot(_MASK_var.g,float3(0.3,0.59,0.11)));
                float node_4756 = (1.0 - node_3670);
                return fixed4(((_OutlineColor.rgb*node_3670)+(node_4756*_BodyOutline.rgb)),_Alpha);
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
			#pragma multi_compile_fog
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _SpecularPower;
            uniform float _ShadowThreshlold;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _ShadowColor;
            uniform float _SpecularBrightness;
            uniform float _ShadowRange;
            uniform float _ShadowContrast;
            uniform float _SpecularRange;
            uniform float _Alpha;
            uniform float _AS;
            uniform fixed _Fresnel_Switch;
            uniform float _Fresnel_Range;
            uniform float _Fresnel_Power;
            uniform float _Se_Shadow2Threshlold;
            uniform float _Brightness;
            uniform float _Body;
            uniform float _LAngle;
            uniform float4 _ShadowColorBody;
			uniform float4 _LightRotation;
			uniform float _RimEnable;
			uniform float4 _RimColor;
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
				UNITY_FOG_COORDS(5)
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
				UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                clip(_MASK_var.a - 0.5);
                float3 lightDirection = normalize(-_LightRotation.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
       			float3 node_5977 = lightDirection.rgb;
                float node_8801 = (pow(max(0,dot(normalize(float3(node_5977.r,(_LAngle+node_5977.g),node_5977.b)),normalDirection)),_AS)-saturate((1.0 - (_MASK_var.r*_ShadowRange))));
                float node_3582_if_leA = step(_Se_Shadow2Threshlold,node_8801);
                float node_3582_if_leB = step(node_8801,_Se_Shadow2Threshlold);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_3670 = step(_Body,dot(_MASK_var.g,float3(0.3,0.59,0.11)));
                float node_4756 = (1.0 - node_3670);
                float3 node_6599 = (((node_4756*_ShadowColorBody.rgb)+(node_3670*_ShadowColor.rgb))*lerp(saturate((_Diffuse_var.rgb*_Diffuse_var.rgb)),_Diffuse_var.rgb,(1.0 - _ShadowContrast)));
                float node_723_if_leA = step(node_8801,_ShadowThreshlold);
                float node_723_if_leB = step(_ShadowThreshlold,node_8801);
                float3 node_723 = lerp((node_723_if_leA*node_6599)+(node_723_if_leB*1.0),node_6599,node_723_if_leA*node_723_if_leB);
                float3 emissive = ((_Fresnel_Power*lerp( 0.0, pow((1.0-max(0,dot(normalDirection, viewDirection))),_Fresnel_Range), _Fresnel_Switch ))+(((lerp((node_3582_if_leA*_Diffuse_var.rgb)+(node_3582_if_leB*node_6599),_Diffuse_var.rgb,node_3582_if_leA*node_3582_if_leB)*clamp(lerp((node_723_if_leA*node_6599)+(node_723_if_leB*1.0),node_6599,node_723_if_leA*node_723_if_leB),0.6,1))+(step(_ShadowThreshlold,node_8801)*((_SpecularBrightness*_SpecularBrightness*_MASK_var.g)*step(_SpecularRange,saturate((saturate(max(0,dot(halfDirection,i.normalDir)))*(_MASK_var.b*_SpecularPower)))))))*_Brightness));
				float3 finalColor=emissive;
				if(_RimEnable>0)
				{							
					finalColor=lerp(emissive,_RimColor,abs(sin(_Time.y*2)*_RimColor.a));
				}
				UNITY_APPLY_FOG(i.fogCoord, finalColor);
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
			#pragma multi_compile_fog
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _SpecularPower;
            uniform float _ShadowThreshlold;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _ShadowColor;
            uniform float _SpecularBrightness;
            uniform float _ShadowRange;
            uniform float _ShadowContrast;
            uniform float _SpecularRange;
            uniform float _Alpha;
            uniform float _AS;
            uniform fixed _Fresnel_Switch;
            uniform float _Fresnel_Range;
            uniform float _Fresnel_Power;
            uniform float _Se_Shadow2Threshlold;
            uniform float _Brightness;
            uniform float _Body;
            uniform float _LAngle;
            uniform float4 _ShadowColorBody;
			uniform float4 _LightRotation;
			uniform float4 _CameraViewPos;
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
				UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
				UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_CameraViewPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                clip(_MASK_var.a - 0.5);
				float3 lightDirection = normalize(-_LightRotation.xyz);
                //float3 lightDirection = normalize(lerp(_LightPosition.xyz, _LightPosition.xyz - i.posWorld.xyz, _LightPosition.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 finalColor = 0;
				UNITY_APPLY_FOG(i.fogCoord, finalColor);
                return fixed4(finalColor,_Alpha);
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
			#pragma multi_compile_fog
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MASK; uniform float4 _MASK_ST;
            uniform float _Alpha;
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
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _MASK_var = tex2D(_MASK,TRANSFORM_TEX(i.uv0, _MASK));
                clip(_Alpha - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
