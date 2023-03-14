Funcion calcular_porcentaje_bono(años_antiguedad)
    Si años_antiguedad>=0 Y años_antiguedad<2 Entonces
        porcentaje_bono <- 0
    SiNo
        Si años_antiguedad>=2 Y años_antiguedad<4 Entonces
            porcentaje_bono <- 0.05
        SiNo
            Si años_antiguedad>=4 Y años_antiguedad<8 Entonces
                porcentaje_bono <- 0.11
            SiNo
                Si años_antiguedad>=8 Y años_antiguedad<11 Entonces
                    porcentaje_bono <- 0.18
                SiNo
                    Si años_antiguedad>=11 Y años_antiguedad<15 Entonces
                        porcentaje_bono <- 0.26
                    SiNo
                        Si años_antiguedad>=15 Y años_antiguedad<20 Entonces
                            porcentaje_bono <- 0.34
                        SiNo
                            Si años_antiguedad>=20 Y años_antiguedad<25 Entonces
                                porcentaje_bono <- 0.42
                            SiNo
                                Si años_antiguedad>=25 Entonces
                                    porcentaje_bono <- 0.5
                                SiNo
                                    porcentaje_bono <- 0
                                FinSi
                            FinSi
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
    devolver porcentaje_bono
FinFuncion

Funcion calcular_bono_antiguedad(porcentaje_bono, salario_minimo_nacional)
    bono_antiguedad <- (salario_minimo_nacional * 3) * porcentaje_bono
    devolver bono_antiguedad
FinFuncion

Funcion calcular_bono_horas_extra(s