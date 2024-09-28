Shader "Hidden/Viewer"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader
	{
		// 0: Base pass
		Pass
		{
			ZTest Always Cull Off ZWrite Off
			Fog { Mode Off }
			CGPROGRAM
			#include "Viewer.cginc"
			#pragma multi_compile __ ENABLE_BASE
			#pragma multi_compile __ ENABLE_BLOOM
			#pragma multi_compile __ ENABLE_TONEMAPPING
			#pragma multi_compile __ TONEMAPPING_LINER
			#pragma multi_compile __ TONEMAPPING_ACES
			#pragma vertex vertBase
			#pragma fragment fragBase
			ENDCG
		}
	    // 1: Prefilter
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #pragma multi_compile _ UNITY_COLORSPACE_GAMMA
            #include "Bloom.cginc"
            #pragma vertex vert
            #pragma fragment frag_prefilter
            #pragma target 3.0
            ENDCG
        }
        // 2: Prefilter with anti-flicker
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #define ANTI_FLICKER 1
            #pragma multi_compile _ UNITY_COLORSPACE_GAMMA
            #include "Bloom.cginc"
            #pragma vertex vert
            #pragma fragment frag_prefilter
            #pragma target 3.0
            ENDCG
        }
        // 3: First level downsampler
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #include "Bloom.cginc"
            #pragma vertex vert
            #pragma fragment frag_downsample1
            #pragma target 3.0
            ENDCG
        }
        // 4: First level downsampler with anti-flicker
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #define ANTI_FLICKER 1
            #include "Bloom.cginc"
            #pragma vertex vert
            #pragma fragment frag_downsample1
            #pragma target 3.0
            ENDCG
        }
        // 5: Second level downsampler
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #include "Bloom.cginc"
            #pragma vertex vert
            #pragma fragment frag_downsample2
            #pragma target 3.0
            ENDCG
        }
        // 6: Upsampler
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #include "Bloom.cginc"
            #pragma vertex vert_multitex
            #pragma fragment frag_upsample
            #pragma target 3.0
            ENDCG
        }
        // 7: High quality upsampler
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #define HIGH_QUALITY 1
            #include "Bloom.cginc"
            #pragma vertex vert_multitex
            #pragma fragment frag_upsample
            #pragma target 3.0
            ENDCG
        }
        // 8: Combiner
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #pragma multi_compile _ UNITY_COLORSPACE_GAMMA
            #include "Bloom.cginc"
            #pragma vertex vert_multitex
            #pragma fragment frag_upsample_final
            #pragma target 3.0
            ENDCG
        }
        // 9: High quality combiner
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #define HIGH_QUALITY 1
            #pragma multi_compile _ UNITY_COLORSPACE_GAMMA
            #include "Bloom.cginc"
            #pragma vertex vert_multitex
            #pragma fragment frag_upsample_final
            #pragma target 3.0
            ENDCG
        }
		//10: Color suite
		Pass
        {
            ZTest Always Cull Off ZWrite Off
            Fog { Mode off }      
            CGPROGRAM
			#pragma multi_compile COLORSPACE_SRGB COLORSPACE_LINEAR
			#pragma multi_compile BALANCING_OFF BALANCING_ON
			#pragma multi_compile TONEMAPPING_OFF TONEMAPPING_ON
			#pragma multi_compile DITHER_OFF DITHER_ORDERED DITHER_TRIANGULAR
			#include "ColorSuite.cginc"
            #pragma target 3.0
            #pragma glsl
            #pragma vertex vert_img
            #pragma fragment frag
            ENDCG
        }
	}
}
