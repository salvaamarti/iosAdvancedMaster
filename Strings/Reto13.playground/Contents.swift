import UIKit

//Reto 13: Permutaciones con strings
// ab -> ab ba
// abc -> abc acb cba bca cab ...

public func myFunction(str: String, actual: String) -> Void {
    
    let longitud : Int = str.count
    let strArray : [Character] = Array(str)
    if longitud == 0 {
        print(actual)
        print("*****")
    }
    else {
        //para cada caracter del string
        for i in 0...(longitud-1) {
            // iz: "" , dr: "bc" (i=0)
            // iz: "a", dr: "c" (i=1)
            // iz: "ab", dr: "" (i=2)
            let izq = String(strArray[0..<i])
            let der = String(strArray[i+1..<longitud])
            
            myFunction(str: izq+der, actual: actual + String(strArray[i]))
            
        }
    }
}
myFunction(str: "ABC", actual: "")
