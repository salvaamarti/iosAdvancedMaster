import UIKit



//MARK: - Reto 5: Cuenta las letras diferentes de un string

public func myFunction(str: String) -> Int {
    
    var iterator : String.Iterator = str.makeIterator()
    var cto : Set<Character> = Set<Character>()
    
    while let iter = iterator.next() {
        if !cto.contains(iter) {
            cto.insert(iter)
        }
    }
    
    return cto.count
}


assert(myFunction(str: "") == 0 , "MyFuncion mal implementada")
