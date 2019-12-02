import UIKit


//MARK: - Reto 9
//Contar número de consonantes y de vocales.

public func myFunction(str : String) -> (Int,Int) {
    
    var numVocales : Int = 0
    var numConsonantes : Int = 0
    var iterador : String.Iterator = str.lowercased().makeIterator()
    
    while let item = iterador.next() {
        
        if item != " " && item != "." && item != "," {
            if item == "a" || item == "e" || item == "i" || item == "o" || item == "u" {
                numVocales += 1
            }
            else {
                numConsonantes += 1
            }
        }
    }
    return (numConsonantes,numVocales)
}


assert(myFunction(str: "Hola, como estas") == (7,6), "Hay un error")
