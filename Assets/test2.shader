Shader "z/Test" { // название шейдера
    Properties {  // параметры
        _MaskTex ("Mask texture", 2D) = "black" {}
        _MainTex ("Main texture", 2D) = "white" {}

    }
    SubShader { // сабшейдер CgFX PC platform, DirectX features
        CGPROGRAM
            #pragma surface surf Lambert // декларация типа шейдера, surf имя функции, lambert модель освещения в которой работает функция surf

            sampler2D _MainTex;
            sampler2D _MaskTex;

            struct Input {
                half2 uv_MaskTex;
                half2 uv_MainTex;
            };

            void surf(Input IN, inout SurfaceOutput o)
            {
                o.Albedo = tex2D(_MaskTex, IN.uv_MaskTex);
            }
        ENDCG
    }

    Fallback "Diffuse"
}