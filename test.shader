Shader "z/Test" { // название шейдера
    Properties {  // параметры

    }
    SubShader { // сабшейдер CgFX PC platform, DirectX features
        CGPROGRAM
            float floatValue = 1.1;
            half halfValue = 1.8; // укороченный float
            fixed fxValue = 0.1; // 256 для хранения цветов
            int intValue = 1; // неочень хорошо для видеокарты, может плохо передаваться из функции в функцию, возможно нужно менять тип данных, меняем на half или float
            bool boolValue = false; // неочень хорошо для видеокарты, может плохо передаваться из функции в функцию, возможно нужно менять тип данных, меняем на fixed

            // cоставные типы данных
            // из всех типов данных можно сделать 4 компонентные векторы
            half2 half2Val = half2(1.0, 0.5); // вектор из 2х компонентов

            half2Val.x // 1 компонента
            half2Val.y // 2 компонента

            half3 half3Val = half3(1.0, 0.5, 0.1);
            half3Val.z // 3 компонента

            half4 half4Val = half4(1.0, 0.5, 0.1, 0.4);
            half4Val.w // 4 компонента

            // максимум 4 компонента в half
            half4Val.xyzw
            half4Val.yxzw // смена порядка компонентов

            // тип данных структура

            struct MySpecialType{ 
                fixed3 color; // из каких компонентов состоит структура(составной тип данных)
                float intensity;
            };

            MySpecialType myVar;
            myVar.color = fixed3(1.0, 1.0, 1.0); // доступ к компонентам структуры
            myVar.color = fixed3(1); // сокращение
            myVar.color = (fixed3)1; // привидение типа(typecasting) работает быстрее чем доступ
    
        ENDCG
    }
    SubShader { // сабшейдер CgFX Console platform, shader model 3.0
        
    }
    SubShader { // сабшейдер CgFX Mobile platform
        
    }

    Fallback "Diffuse"
}