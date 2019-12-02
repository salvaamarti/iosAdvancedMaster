import UIKit

//Reto 9: Sumar numeros que se han colado en un string

public func solution(str: String) -> Int {
    
    var vector : [Int] = Array<Int>()
    var charInt : String = ""
    var anterior : Bool = false
    
    for char in str {

        if Int(String(char)) != nil && anterior {
            charInt = String(vector.last!)
            charInt += String(char)
            vector[vector.count-1] = Int(charInt)!
        }
        else if let num = Int(String(char)) {
            vector.append(num)
            anterior = true
        }
        else {
            anterior = false
        }
    }
    print(vector)
    return vector.reduce(0, +)
}

print(solution(str: "0761sc4q82"))
