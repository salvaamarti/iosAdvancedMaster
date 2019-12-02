import UIKit

//MARK:  Reto 6: eliminar las letras que se repiten en un string

public func myFunction(str : String) -> String {
    
    var result : String = ""
    
    for char in str {
        if !result.contains(char) {
            result += "\(char)"
        }
    }
    return result
}


assert(myFunction(str: "television") == "telvison", "Función mal implementada")
assert(myFunction(str: "hello") == "helo", "Función mal implementada")
