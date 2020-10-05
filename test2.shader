Shader "z/Test" { // название шейдера
    Properties {  // параметры
        _MaskTex ("Mask texture", 2D) = "black" {}
        _MainTex1 ("Main texture 1", 2D) = "white" {}
        _MainTex2 ("Main texture 2", 2D) = "white" {}
        _MainTex3 ("Main texture 3", 2D) = "white" {}

    }
    SubShader { // сабшейдер CgFX PC platform, DirectX features
        CGPROGRAM
            #pragma surface surf Lambert // декларация типа шейдера, surf имя функции, lambert модель освещения в которой работает функция surf

            sampler2D _MainTex1, _MainTex2, _MainTex3, _MaskTex;

            struct Input {
                half2 uv_MaskTex;
                half2 uv_MainTex1;
            };

            void surf(Input IN, inout SurfaceOutput o)
            {
                fixed3 masks = tex2D(_MaskTex, IN.uv_MaskTex);
                fixed3 clr = 
                o.Albedo = tex2D(_MaskTex, IN.uv_MainTex1);
            }
        ENDCG
    }

    Fallback "Diffuse"
}