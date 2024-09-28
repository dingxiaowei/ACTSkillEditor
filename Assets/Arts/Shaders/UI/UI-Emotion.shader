Shader "UI/Emotion"
{
	Properties
	{
		_Alpha ("Alpha", Range(0, 1)) = 1
		_ColorDes ("ColorDes", Range(0, 1)) = 1
		_MainTex ("Texture", 2D) = "white" {}
		_EyesTex ("EyeTexture", 2D) = "white" {}
		_MouthTex ("MouthTexture", 2D) = "white" {}
	 	_EyesRange ("EyesRange", Vector) = (0,0,0,0)
		_MouthRange ("MouthRange", Vector) = (0,0,0,0)
		_EyesRect ("EyesRect", Vector) = (0,0,0,0)
		_MouthRect ("MouthRect", Vector) = (0,0,0,0)
		_EyesScale ("EyesScale", Vector) = (0,0,0,0)
		_MouthScale ("MouthScale", Vector) = (0,0,0,0)

		[MaterialToggle] _IsShowEye ("IsShowEye", Float) = 1
		[MaterialToggle] _IsShowMouth ("IsShowMouth", Float) = 1

		[MaterialToggle] _IsReverse ("IsReverse", Float) = 0
		[MaterialToggle] _IsShowOutline ("IsShowOutline", Float) = 0
     	_OutlineColor("Outline Color", Color) = (1,1,1,1)
		_OutlineWidth("OutlineWidth", Range (0,0.02)) = 0.01
		 
        // required for UI.Mask
         _StencilComp ("Stencil Comparison", Float) = 8
         _Stencil ("Stencil ID", Float) = 0
         _StencilOp ("Stencil Operation", Float) = 0
         _StencilWriteMask ("Stencil Write Mask", Float) = 255
         _StencilReadMask ("Stencil Read Mask", Float) = 255
         _ColorMask ("Color Mask", Float) = 15
		
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

  		 Stencil
         {
             Ref [_Stencil]
             Comp [_StencilComp]
             Pass [_StencilOp] 
             ReadMask [_StencilReadMask]
             WriteMask [_StencilWriteMask]
         }
		 Cull Off
		 Lighting Off
		 ZWrite Off
         ZTest [unity_GUIZTestMode]
         Blend SrcAlpha OneMinusSrcAlpha
         ColorMask [_ColorMask]
		Pass
		{
			CGPROGRAM
			#pragma multi_compile_instancing
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x n3ds wiiu 
			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
			};
			fixed _Alpha;
			fixed _ColorDes;
			sampler2D _MainTex;
			sampler2D _EyesTex;
			sampler2D _MouthTex;
			float4 _MainTex_ST;
			float4 _EyesTex_ST;
	

			fixed4 _EyesRange;
			fixed4 _MouthRange;
			fixed4 _EyesRect;
			fixed4 _MouthRect;
			fixed4 _EyesScale;
			fixed4 _MouthScale;

			float _IsReverse;
			float _IsShowOutline;
            fixed4 _OutlineColor;
			fixed _OutlineWidth;

			float _IsShowEye;
			float _IsShowMouth;

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
			    if(_IsReverse)
					i.uv.x=1-i.uv.x;
				fixed4 col = tex2D(_MainTex, i.uv);
			    fixed u=i.uv.x;
				fixed v=i.uv.y;

				if(_IsShowEye>0)
				{
					if(u>= _EyesRange.x && u<= _EyesRange.z)
					{	
						if(v>=_EyesRange.y && v<=_EyesRange.w)
						{
							fixed2 uv=(i.uv.xy-_EyesRange.xy)*fixed2(_EyesScale.x,_EyesScale.y) * fixed2(_EyesRect.z,_EyesRect.w)+fixed2(_EyesRect.x,_EyesRect.y);
							fixed4 colEye = tex2D(_EyesTex,uv);
							col.rgb=lerp(col.rgb,colEye.rgb,colEye.a);	
						}
					}
				}
				if(_IsShowMouth>0)
				{
					if(u>= _MouthRange.x && u<= _MouthRange.z)
					{	
						if(v>=_MouthRange.y && v<=_MouthRange.w)
						{
							fixed2 uv=(i.uv.xy-_MouthRange.xy)*fixed2(_MouthScale.x,_MouthScale.y)*fixed2(_MouthRect.z,_MouthRect.w)+fixed2(_MouthRect.x,_MouthRect.y);
							fixed4 colMouth = tex2D(_MouthTex,uv);
							col.rgb=lerp(col.rgb,colMouth.rgb,colMouth.a);	
						}
					}
				}
	
				col.rgb*=_ColorDes;
				col.a=col.a*_Alpha;
				if(_IsShowOutline>0&&col.a!=0)
				{
				    fixed4 pixelUp = tex2D(_MainTex, i.uv + fixed2(0, _OutlineWidth));
                    fixed4 pixelDown = tex2D(_MainTex, i.uv - fixed2(0, _OutlineWidth));
                    fixed4 pixelRight = tex2D(_MainTex, i.uv + fixed2(_OutlineWidth, 0));
                    fixed4 pixelLeft = tex2D(_MainTex, i.uv - fixed2(_OutlineWidth, 0));
					if (pixelUp.a * pixelDown.a * pixelRight.a * pixelLeft.a == 0) 
					{
                        col.rgb = fixed4(1, 1, 1, 1) * _OutlineColor;
                    }
				}
				return col;
			}
			ENDCG
		}
	}
}
