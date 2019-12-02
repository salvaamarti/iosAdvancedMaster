import UIKit

//Reto11.
//Entrada: 1 String de palabras separadas por espacios
//Salida: 1 String


// "muñeco muñeca" -> "muñec"
// "camion camioneta" -> "camion"
// "casa cosa cosita" -> "c"

public func myFunction(str: String) -> String {
    
    
    var words: [String] = str.components(separatedBy: " ".lowercased()).sorted { (elem1, elem2) -> Bool in
        elem1.count < elem2.count
    }
    
//ALTERNATIVA CON SPLIT (Trabajamos con Substring, que es una subclase de String, pero es lo mismo, es más comodo porque elimina espacios en blanco adicionales)
    
//    var words : [Substring] = str.split(separator: " ".lowercased()).sorted { (elem1, elem2) -> Bool in
//        elem1.count < elem2.count
//    }
    
    print(words)
    
    if words.count > 0 {
        
        var set : Set<String> = Set<String>()
        var smaller : String = words.removeFirst()
        //var end : Bool = false
        
        while smaller.count > 0  {
        
        for w in words {
            
            let isin : Bool = w.hasPrefix(smaller)
            
            if isin {
                set.insert(w)
            }
        }
        
        if set.count == words.count {
            return smaller
        }
        else {
            smaller.removeLast()
        }
            
    }
        
    }
    else {
        return ""
    }
   return ""
}

print(myFunction(str: "muñeco muñeca"))
