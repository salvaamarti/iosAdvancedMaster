import UIKit

//Reto 10: Raiz cuadrada a mano

public func solution(numero : Int) -> Int {
    return Int(pow(Double(numero), 0.5))
}

print(solution(numero: 9))

//Reto 11: Restar sin restar
public func solution(num1: Int, num2: Int) -> Int {
    return -(-num1 + num2)
}

print(solution(num1: 10, num2: 5))
