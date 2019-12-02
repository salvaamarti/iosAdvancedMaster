import UIKit

//Reto 8: Devolver true si un string contiene solo carácteres numéricos
public func myFunction(str: String) -> Bool {
    for char in str {
        if !char.isNumber {
            return false
        }
    }
    return true
    
    //En una linea-----------
    //return UInt(str) != nil
    //-----------------------
}


print(myFunction(str: "01010100020030304"))
