/*
    >> LISTAS --> COLECCIONES

* tengo un objeto ROLANDO, lo que necesito son referencias a un objeto que va a ser ARTEFACTOS y esta coleccion
  hace referencia a cada objeto (espada, libro, etc)
* por ej: si quiero sacar la espada, tengo q dejar de referenciarlo. 
Es todo por referencias. 
* los objetos son independientes de la colección, la colección lo unico que hace es referenciarlo.

SET - CONJUNTO --> es como un conj matemático, no hay orden, no hay repetidos
 -- no se puede preguntar por ej, por el elemento en la posición 2
LIST - LISTA --> si tienen orden que se basa en el orden en el que agregas elementos
 -- puede entender más cosas que los sets. 
 -- pueden haber repetidos, porque pueden haber más referencias al mismo objeto. (si tenes 4, y estas apuntando dos veces al mismo obj, te va a decir que tiene 5 elem)
*/
object rolando{
    var property hogar = castillo
    const mochila = #{} // si bien varía el contenido de la mochila, tiene que ser const porque rolando no quiere apuntar a otra mochila. la mochila cambia su valor
    var property capacidad = 2

    method encontrar(artefacto){
        if (mochila.size() < 2){
            mochila.add(artefacto) //la funcion add agrega lo que este por parametro al conjunto
        }
    }   
    method mochila(){
        return mochila //si quisiera que mochila sea una lista usar funcion .asList() 
    }
    method llegar(){
        hogar.almacenar(mochila)
        mochila.clear()
    }
}

object libro{

}

object collar{

}

object espada{

}

object armadura{

}

object castillo{
    const cofre = #{}

    method almacenar(artefactos){
        cofre.addAll(artefactos)  // todo lo que hay en artefactos lo agrega a cofre
    }
    method cofre(){
        return cofre
    }
}