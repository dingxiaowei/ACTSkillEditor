// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

/***********************************************************************
        filename:   Shader_Character-Alpha.shader
        created:    2012.08.01
        author:     Twj

        purpose:    带Alpha混合的角色渲染着色器
*************************************************************************/

Shader "Devil/Shader_Character_Alpha"
{
	Properties
	{
		_MainTex ("MainTex", 2D) = "" {}
		_Color ("Main Color", Color) = (1, 1, 1, 1)
        _AlphaAmount ("AlphaAmount", Float) = 1.0
	}

	SubShader
	{
		Tags { "Queue" = "Transparent" }

        //
        Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            //
            sampler2D _MainTex;
            fixed4 _Color;
            float _AlphaAmount;

            // 顶点着色器到片段着色器的传输数据结构
            struct v2f
            {
                float4 pos : SV_POSITION;
                float4 texcoord : TEXCOORD0;
            };

            // 顶点着色器
            v2f vert( appdata_base input )
            {
                v2f output;
                output.pos = UnityObjectToClipPos( input.vertex );
                output.texcoord = input.texcoord;

                return output;
            }

            fixed4 frag( v2f input ) : COLOR
            {
                fixed4 texColor = tex2D( _MainTex, input.texcoord.xy );

                //
                fixed4 finalColor = texColor * _Color;

                //
                finalColor.a = _AlphaAmount;

                return finalColor;
            }

            ENDCG
		}
	}

	FallBack "Diffuse"
}