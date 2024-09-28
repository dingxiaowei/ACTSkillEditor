// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Katana/UI/Outline"
{
    Properties
    {
        [HideInInspector]_MainTex ("Main Texture", 2D) = "white" {}
        _MainCol ("MainColor", Color) = (1,1,1,1)
        [HideInInspector][MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
		[MaterialToggle] _IsShowOutline ("_IsShowOutline", Float) = 0
     	_OutlineColor("Outline Color", Color) = (1,1,1,1)
		_OutlineWidth("OutlineWidth", Range (0,0.02)) = 0.01
    }

    SubShader
    {
        Tags
        {
            "Queue"="Transparent"
            "IgnoreProjector"="True"
            "RenderType"="Transparent"
            "PreviewType"="Plane"
            "CanUseSpriteAtlas"="True"
        }

        Cull Off
        Lighting Off
        ZWrite Off
        Blend One OneMinusSrcAlpha

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile _ PIXELSNAP_ON
            #pragma shader_feature ETC1_EXTERNAL_ALPHA
            #include "UnityCG.cginc"

            struct appdata_t
            {
                float4 vertex   : POSITION;
                float4 color    : COLOR;
                float2 texcoord : TEXCOORD0;
            };

            struct v2f
            {
                float4 vertex   : SV_POSITION;
                fixed4 color    : COLOR;
                float2 texcoord  : TEXCOORD0;
            };

            fixed4 _MainCol;
            float _IsShowOutline;
            fixed4 _OutlineColor;
			sampler2D _MainTex;
            sampler2D _AlphaTex;
			fixed _OutlineWidth;
            fixed4 SampleTexture (float2 uv)
            {
                fixed4 color = tex2D (_MainTex, uv);

                #if ETC1_EXTERNAL_ALPHA
                // get the color from an external texture (usecase: Alpha support for ETC1 on android)
                color.a = tex2D (_AlphaTex, uv).r;
                #endif //ETC1_EXTERNAL_ALPHA
                return color;
            }
		    
			v2f vert(appdata_t i)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(i.vertex);
                o.texcoord = i.texcoord;
                o.color = i.color * _MainCol;
                #ifdef PIXELSNAP_ON
                o.vertex = UnityPixelSnap (o.vertex);
                #endif
                return o;
            }

            fixed4 frag(v2f i) : SV_Target
            {
                fixed4 c = SampleTexture (i.texcoord) * i.color;
                if (_IsShowOutline > 0 && c.a != 0) 
				{
                    //get four direction pixel nearby
                    fixed4 pixelUp = tex2D(_MainTex, i.texcoord + fixed2(0, _OutlineWidth));
                    fixed4 pixelDown = tex2D(_MainTex, i.texcoord - fixed2(0, _OutlineWidth));
                    fixed4 pixelRight = tex2D(_MainTex, i.texcoord + fixed2(_OutlineWidth, 0));
                    fixed4 pixelLeft = tex2D(_MainTex, i.texcoord - fixed2(_OutlineWidth, 0));

                    //one of nearby pixel 0,use outline color
                    if (pixelUp.a * pixelDown.a * pixelRight.a * pixelLeft.a == 0) 
					{
                        c.rgb = fixed4(1, 1, 1, 1) * _OutlineColor;
                    }
                }
                c.rgb *= c.a;
                return c;
            }
            ENDCG
        }
    }
}