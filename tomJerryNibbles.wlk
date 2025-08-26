object tom {
    //parte 1 ---------------------------------------
    var energia = 50

    method correr_Metros(distancia){
        energia = energia - distancia / 2
    }

    method comerA_(raton){
        energia = energia + 12 + raton.peso()
    }

    method velMax(){
        return 5 + energia/10
    }
    // parte 2 --------------------------------------
    method puedeCazarA_Metros(distancia){
        return energia - distancia / 2 >= 0
    }
    method cazarA_A_Metros(raton, distancia) {
        if(tom.puedeCazarA_Metros(distancia)){

            tom.correr_Metros(distancia)
            tom.comerA_(raton)

        }
    }
}

object jerry {

    var edad = 2

    method peso(){
        return edad * 20
    }
    method cumpleAnios() {
        edad = edad + 1
    }
}

object nibbles {
    method peso(){
        return 35
    }
}

// Inventar otro ratón

object perez {
    var dientes = 40

    method peso() {
        return dientes + 35
    }

    method recogerDiente() {
        dientes = dientes + 1
    }
}