import UIKit

//Reto 12

//abc -> a1b1c1
//aabbcca -> a2b2c2a1
//aaAAbB -> a2A2b1B1

public func myFunction(str: String) -> String {
    
    guard str.count > 0 else {return ""}
    var aux : String = str
    
    var previous : Character = aux.removeFirst()
    var contador : Int = 1
    var result = ""
    
    for character in aux {
        
        if character == previous {
            contador += 1
        }
        else {
            result += "\(previous)\(contador)"
            contador = 1
            previous = character
        }
    }
    
    result += "\(previous)\(contador)"
    
    return result
}

print(myFunction(str: "aaAAbBccCD"))
