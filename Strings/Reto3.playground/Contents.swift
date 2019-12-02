import UIKit

//Reto 3: función que dados dos strings devuelve true si ambos contienen la misma cantidad de caracteres de un mismo tipo.
//public func myFunction(str1: String, str2: String) -> Bool {
//
//    var set1 : Set<Character> = Set<Character>()
//    var set2 : Set<Character> = Set<Character>()
//
//    if (str1.count == str2.count) {
//
//        var iterator1 : String.Iterator = str1.makeIterator()
//        var iterator2 : String.Iterator = str2.makeIterator()
//
//        while let item = iterator1.next() {
//            if !set1.contains(item) {
//                set1.insert(item)
//            }
//        }
//
//        while let item = iterator2.next() {
//            if !set2.contains(item) {
//                set2.insert(item)
//            }
//        }
//
//        if (set1.count == set2.count) {
//
//            if(set1.isSubset(of: set2)) {
//                return true
//            }
//            else {
//                return false
//            }
//        }
//        else {
//            return false
//        }
//
//    }
//    else {
//        return false
//    }
//
//}
//
//var result : Bool = myFunction(str1: "cbe", str2: "abc")

//print(result)

public func myFunction(str1: String, str2: String) -> Bool {
    let array1 = Array(str1)
    let array2 = Array(str2)
    return array1.count == array2.count && array1.sorted() == array2.sorted()
}


assert(myFunction(str1: "saco", str2: "cosa") == true, "El reto 3 contiene un error")
assert(myFunction(str1: "hola", str2: "hola") == true, "El reto 3 contiene un error")
assert(myFunction(str1: "hola", str2: "holi") == false, "El reto 3 contiene un error")
assert(myFunction(str1: "cosa", str2: "camion") == false, "El reto 3 contiene un error")
assert(myFunction(str1: "abc", str2: "cba") == true, "El reto 3 contiene un error")
assert(myFunction(str1: "abca", str2: "cba") == false, "El reto 3 contiene un error")
assert(myFunction(str1: "a", str2: "aa") == false, "El reto 3 contiene un error")
