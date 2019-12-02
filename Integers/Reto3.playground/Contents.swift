import UIKit


//Reto 3
//Calcular potencias manualmente

public func myFunction(base: Int, exp: Int) -> Int? {
    
    guard base != 0 || exp != 0 else {return nil} // base = 0, exp = 0 --> 0 != 0 -> false, 0 != 0 -> false, --> false || false = false. Si false else... (si true sigue)
    guard exp != 0 else {return 1}
    guard base != 0 else {return 0}
    
    var result : Int = 1
    
    for _ in 1...exp {
        result *= base
    }
    return result
}

var calculo : Int? = myFunction(base: 3, exp: 0)

print(calculo)
