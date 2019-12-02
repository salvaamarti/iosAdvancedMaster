import UIKit




//Reto 4:

// a = 2 ; b = 1 --> a = 1 ; b = 2

var a : Int = 2
var b : Int = 3

//Forma 1
print("a = \(a) b = \(b)")
swap(&a, &b) // swap(a,b) -> a = b y b = a
print("a = \(a) b = \(b)")

//Forma 2
(a,b) = (b,a)

