import UIKit


//Integers
//Reto 1.

public func myFunction() -> Void {
    
//    var m3 : Bool = false
//    var m5 : Bool = false
//
//    for i in 1...100 {
//        m3 = false
//        m5 = false
//
//        if i % 3 == 0 {
//            m3 = true
//        }
//        if i % 5 == 0 {
//            m5 = true
//        }
//
//        if m3 && m5 {
//            print("Toy Story")
//        }
//        else if m3 {
//            print("Toy")
//        }
//        else if m5 {
//            print("Story")
//        }
//        else {
//            print("\(i)")
//        }
    
//    }
    
    (1...100).forEach { (i) in
        print(i % 3 == 0 ? i % 5 == 0 ? "Toy Story" : "Toy" : i % 5 == 0 ? "Story" : "\(i)")
    }
    
    
}

myFunction()
