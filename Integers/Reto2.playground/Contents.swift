import UIKit


//Reto 2
//Devolver un random entre un min y un max



public func myFunction(min : Int, max : Int) -> Int {
    //arc4random()
    return Int.random(in: min...max)
}

public var num : Int = myFunction(min: 1, max: 10)

print(num)
