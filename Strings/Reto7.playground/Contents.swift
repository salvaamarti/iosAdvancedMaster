import UIKit


//MARK: Reto 7, string bien formateado con los espacios justos y necesarios

public func myFunction(str : String) -> String {
    return str.split(separator: " ").joined(separator: " ")
}

myFunction(str: "           Esto             es una           prueba             ")
