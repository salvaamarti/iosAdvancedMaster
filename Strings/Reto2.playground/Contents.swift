import UIKit


//Reto2.

//string de entrada
//bool de salida

//Detectar palíndromos (ala)

public func myFunction(str : String) -> Bool {
    
    var str1 : String = ""
    var str2 : String = ""
    
    var strIterator : String.Iterator = str.makeIterator()
    
    while let item = strIterator.next() {
        str1.insert(item, at: str1.endIndex)
        str2.insert(item, at: str2.startIndex)
    }
    
    str1 = str1.replacingOccurrences(of: " ", with: "")
    str2 = str2.replacingOccurrences(of: " ", with: "")
    
    return str1.elementsEqual(str2)
}


print(myFunction(str: "adan salta y atlas nada"))
print(myFunction(str: "ligar es ser agil"))
