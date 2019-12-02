import UIKit


//Reto 5:
//Dado un numero int devolver bool true si es primo

public func esPrimo( _ num: Int) -> Bool {
    
    guard num > 0 else {return false}
    guard num > 3 else {return true}
    guard num % 2 != 0 else {return false}
    guard num % 3 != 0 else {return false}
    
    for i in 2...num/2 {
        guard num % i != 0 else {return false}
    }
    return true
}


print(esPrimo(16777259))
