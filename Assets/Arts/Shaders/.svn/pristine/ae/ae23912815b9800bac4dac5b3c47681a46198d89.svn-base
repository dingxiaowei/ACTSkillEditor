Shader "Shader Forge/ToonEmotion" {
    Properties {
		_MainColor ("MainColor", Color) = (1,1,1,1)
        _Tiles ("Tiles", Vector) = (1,1,0,0)
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Emotion ("Emotion", Range(1, 16)) = 1
        _Eye ("Eye", 2D) = "white" {}
        _Mask ("Mask", 2D) = "white" {}
        _EyeScale ("EyeScale", Range(-1, 0.5)) = 0
        _Alpha ("Alpha", Range(0, 1)) = 1
        [MaterialToggle] _Mouth ("Mouth", Float ) = 2
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
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Tiles;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Emotion;
            uniform float _Alpha;
            uniform sampler2D _Eye; uniform float4 _Eye_ST;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _EyeScale;
            uniform fixed _Mouth;
			uniform float4 _MainColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float node_8780 = fmod(trunc((_Emotion-1.0)),((_Tiles.r*_Tiles.g)-_Tiles.b));
                float2 node_3182_tc_rcp = float2(1.0,1.0)/float2( _Tiles.r, (-1*_Tiles.g) );
                float node_3182_ty = floor(node_8780 * node_3182_tc_rcp.x);
                float node_3182_tx = node_8780 - _Tiles.r * node_3182_ty;
                float2 node_3182 = (float2(i.uv0.r,(i.uv0.g*-1.0+1.0)) + float2(node_3182_tx, node_3182_ty)) * node_3182_tc_rcp;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_3182, _Diffuse))*_MainColor;
                float node_849 = 0.0;
                float node_8187 = (1.0 - _EyeScale);
                float2 node_5451 = (_EyeScale + ( (i.uv1 - node_849) * (node_8187 - _EyeScale) ) / (1.0 - node_849));
                float4 _Eye_var = tex2D(_Eye,TRANSFORM_TEX(node_5451, _Eye));
                float node_9746 = 0.5;
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_3182, _Mask));
                float3 node_756 = lerp(_Diffuse_var.rgb,((((_Eye_var.rgb*_Diffuse_var.rgb)*node_9746)+(saturate((_Eye_var.rgb+_Diffuse_var.rgb-1.0))*(1.0 - node_9746)))+_Eye_var.a),_Mask_var.rgb);
                float3 emissive = lerp( node_756, _Diffuse_var.rgb, _Mouth );
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,_Diffuse_var.a*_Alpha);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
