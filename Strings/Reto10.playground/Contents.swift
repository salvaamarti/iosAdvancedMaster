import UIKit

//Reto 10
public func myFunction(str1 : String, str2: String) -> Bool {
    
    var contador : Int = 0
    var array1 : [Character] = Array(str1.lowercased())
    var array2 : [Character] = Array(str2.lowercased())
    
    if (str1.count == str2.count) {
        while array1.count > 0 {
            if array1.removeFirst() != array2.removeFirst() {
                contador += 1
            }
        }
    }
    else {
        return false
    }
    return contador <= 3
}

//print(myFunction(str1: "Caballero", str2: "Maballiro"))

assert(myFunction(str1: "casas", str2: "cosa") == false, "error")
assert(myFunction(str1: "Caballero", str2: "Maballiro") == true, "error")
assert(myFunction(str1: "CaBaLlO", str2: "camello") == true, "error")
assert(myFunction(str1: "martillo", str2: "molinill") == false, "error")
