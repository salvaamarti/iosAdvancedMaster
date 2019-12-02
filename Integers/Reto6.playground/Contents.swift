import UIKit

//Reto 6: Dado un entero positivo como parámetro de entrada, calcular el binario menor y mayor a él que contenga el mismo número de 1s...
public func myFunction(num: Int) -> (menor: Int?, mayor: Int?) {
    
    let numBinario = String(num, radix: 2)
    let numUnos = numBinario.filter { (character) -> Bool in
        return character == "1"
    }.count
    
    var menor : Int? = nil
    var mayor : Int? = nil
    
    for i in num+1...Int.max {
        let binActual = String(i, radix: 2)
        let binUnosActual = binActual.filter { (character) -> Bool in
            return character == "1"
            }.count
        
        if numUnos == binUnosActual {
            mayor = i
            break
        }
    }
    
    for i in (0..<num).reversed() {
        let binActual = String(i, radix: 2)
        let binUnosActual = binActual.filter { (character) -> Bool in
            return character == "1"
            }.count
        
        if numUnos == binUnosActual {
            menor = i
            break
        }
    }

    return (menor,mayor)
}

print(myFunction(num: 5))
