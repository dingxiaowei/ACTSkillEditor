// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:Shader Forge/ground_reflection,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:False,enco:True,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1501536,fgcg:0.1270545,fgcb:0.1838235,fgca:1,fgde:0.008,fgrn:-10,fgrf:700,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2553,x:32800,y:33755,varname:node_2553,prsc:2|diff-2380-OUT,normal-8894-RGB,refract-8616-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:141,x:30308,y:33415,ptovrint:False,ptlb:ReflectionTex,ptin:_ReflectionTex,varname:node_141,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7838,x:30675,y:33312,varname:node_7838,prsc:2,ntxv:0,isnm:False|UVIN-7833-UVOUT,TEX-141-TEX;n:type:ShaderForge.SFN_ScreenPos,id:7833,x:30308,y:33234,varname:node_7833,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:4191,x:31426,y:33449,ptovrint:False,ptlb:texture2D,ptin:_texture2D,varname:node_4191,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:2380,x:31863,y:33147,varname:node_2380,prsc:2,blmd:5,clmp:True|SRC-4915-OUT,DST-4191-RGB;n:type:ShaderForge.SFN_Fresnel,id:3223,x:31095,y:32880,varname:node_3223,prsc:2|EXP-6752-OUT;n:type:ShaderForge.SFN_Tex2d,id:8894,x:32299,y:32817,ptovrint:False,ptlb:normal,ptin:_normal,varname:node_8894,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Append,id:8616,x:32334,y:33464,varname:node_8616,prsc:2|A-8894-R,B-8894-G;n:type:ShaderForge.SFN_Multiply,id:4915,x:31733,y:32763,varname:node_4915,prsc:2|A-3223-OUT,B-6024-OUT,C-3791-OUT,D-3128-RGB;n:type:ShaderForge.SFN_ValueProperty,id:6752,x:30881,y:32893,ptovrint:False,ptlb:Reflection_fanwei,ptin:_Reflection_fanwei,varname:node_6752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:3791,x:31038,y:32733,ptovrint:False,ptlb:Reflection_light,ptin:_Reflection_light,varname:node_3791,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Lerp,id:6024,x:31473,y:33135,varname:node_6024,prsc:2|A-2857-OUT,B-7838-RGB,T-3223-OUT;n:type:ShaderForge.SFN_Vector1,id:2857,x:31008,y:33069,varname:node_2857,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:3128,x:31421,y:32917,ptovrint:False,ptlb:Reflection_mask,ptin:_Reflection_mask,varname:node_3128,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;proporder:141-4191-8894-3128-6752-3791-9859;pass:END;sub:END;*/

Shader "Shader Forge/ground_reflection" {
    Properties {
        _ReflectionTex ("ReflectionTex", 2D) = "bump" {}
        _texture2D ("texture2D", 2D) = "white" {}
        _normal ("normal", 2D) = "bump" {}
        _Reflection_mask ("Reflection_mask", 2D) = "bump" {}
        _Reflection_fanwei ("Reflection_fanwei", Float ) = 1
        _Reflection_light ("Reflection_light", Range(0, 5)) = 0
        _node_1310 ("node_1310", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles metal d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform sampler2D _texture2D; uniform float4 _texture2D_ST;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform float _Reflection_fanwei;
            uniform float _Reflection_light;
            uniform sampler2D _Reflection_mask; uniform float4 _Reflection_mask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                float3 normalLocal = _normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + float2(_normal_var.r,_normal_var.g);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - 0;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float node_3223 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Reflection_fanwei);
                float node_2857 = 0.0;
                float4 node_7838 = tex2D(_ReflectionTex,TRANSFORM_TEX(sceneUVs.rg, _ReflectionTex));
                float4 _Reflection_mask_var = tex2D(_Reflection_mask,TRANSFORM_TEX(i.uv0, _Reflection_mask));
                float4 _texture2D_var = tex2D(_texture2D,TRANSFORM_TEX(i.uv0, _texture2D));
                float3 diffuseColor = saturate(max((node_3223*lerp(float3(node_2857,node_2857,node_2857),node_7838.rgb,node_3223)*_Reflection_light*_Reflection_mask_var.rgb),_texture2D_var.rgb));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,1),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Shader Forge/ground_reflection"
    CustomEditor "ShaderForgeMaterialInspector"
}
