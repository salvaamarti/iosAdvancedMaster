import UIKit


// Reto 14: Revertir el orden de las palabras en una frase
//Ejemplo: "Esto es un nuevo reto" -> "otsE se nu oveun oter"


public func myFunction(str : String) -> String {
    
    let componentes : [String]  = str.components(separatedBy: " ")
    
    //FORMA NORMAL -----------------------------------
    
    var resultado = ""

    for palabra in componentes {
        resultado += palabra.reversed() + " "
    }

    resultado.removeLast()
    return resultado
    
//------------------------------------------------------
    
//    let palabrasInvertidas  = componentes.map {
//        "\($0.reversed())"
//    }
//
//    return palabrasInvertidas.joined(separator: " ")
}

print(myFunction(str: "Esto es un nuevo reto"))
