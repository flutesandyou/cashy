Shader "z/Test" { // название шейдера
    Properties {  // параметры

    }
    SubShader { // сабшейдер CgFX PC platform, DirectX features
        CGPROGRAM
            #pragma surface surf Lambert // декларация типа шейдера, surf имя функции, lambert модель освещения в которой работает функция surf

            struct Input {};

            void surf(Input IN, inout SurfaceOutput o)
            {
                o.Albedo = 1.0;
            }
        ENDCG
    }
    SubShader { // сабшейдер CgFX Console platform, shader model 3.0
        
    }
    SubShader { // сабшейдер CgFX Mobile platform
        
    }

    Fallback "Diffuse"
}