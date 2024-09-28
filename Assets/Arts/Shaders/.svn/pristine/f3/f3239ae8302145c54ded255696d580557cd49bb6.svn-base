Shader "Projector/Additive" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_ShadowTex ("Cookie", 2D) = ""
		_FallOffTex ("FallOff", 2D) = ""
	}
	SubShader 
	{
	  pass
	  {
		ZWrite Off
		FOG{ Color(1,1,1) }
		ColorMask RGB
		blend One One
		SetTexture[_ShadowTex]
		{
			constantColor[_Color]
			combine texture*constant,ONE-texture
			matrix[_Projector]
		}
		SetTexture[_FallOffTex]
		{
			constantColor(0,0,0,0)
			combine previous lerp (texture) constant
			matrix[_ProjectorClip]
		}
	  }
	}
}
