import UIKit

//Reto 5
//Un string contiene otro string

public func myFunction(str1 : String, str2: String) -> Bool {
    return str1.uppercased().contains(str2.uppercased()) || str2.uppercased().contains(str1.uppercased())
}


assert(myFunction(str1: "Yo tengo un Camion", str2: "camion") == true, "La función no está bien implementada")
