import UIKit

//Reto 1.
//Función que recorre un string de tamaño variable y que si no hay ningún caracter repetido devuelve true. Si existen caracteres repetidos devuelve false.
func myFunction(str: String) -> Bool {
    
    var iterator : String.Iterator  = str.makeIterator()
    var charSet : Set<Character> = Set<Character>()
    
    while let char = iterator.next() {
        
        if !charSet.contains(char) {
            charSet.insert(char)
        }
        else {
            return false
        }
    }
    return true
}
//--------------------------------------------------------------------------

var sentence : String = "Hola izebu"
var resultado : Bool = myFunction(str: sentence)
print(resultado)

assert(myFunction(str: "Hola") == true, "El reto 1 tiene un error")
