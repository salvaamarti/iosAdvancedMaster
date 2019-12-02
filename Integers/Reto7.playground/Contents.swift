import UIKit



//Reto 7: Binario Invertido

public func myFunction(num: Int) -> Int {
    
    let binario : String = String(num, radix: 2)
    let longitud : Int = binario.count
    let cerosNecesarios : Int = 8 - longitud
    guard cerosNecesarios > 0 else {return -1}
    
    //let strCero: String = Array(repeating: "0", count: cerosNecesarios).joined(separator: "") + binario
    let strCero : String = String(repeating: "0", count: cerosNecesarios) + binario
    let binarioInvertido : String = String(strCero.reversed())
    
    
    //UInt(binarioInvertido,radix:2)!
    return Int(strtoul(binarioInvertido, nil,2))
}

var a : Int = myFunction(num: 4)

print(a)
