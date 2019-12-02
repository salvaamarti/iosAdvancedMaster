import UIKit


//RETO 9: String con todas las letras del abecedario
//Pangramas

public func myFunction(str : String) -> Bool {
    
    var set : Set<Character> = Set<Character>()
    
    if(str.count < 27 ) {
        return false
    }
    else {
        
        for character in str.lowercased() {
            
            if((character != " " && character != "." && character != ",") && !set.contains(character)) {
                set.insert(character)
            }
        }
        
        print(set.sorted())
        return set.count == 27
    
    }
    
}

//print(myFunction(str: "a a b c d d e f g h i j k l m n ñ o p q r s s t u v w w x x x y z"))

assert(myFunction(str: "Mis amigas son tan buenas que han venido para preparme una fiesta sorpresa sexual porque hoy es mi cumpleaños. Me han regalado unos zapatos, kiwis y un jersey") == true, "Hay un error en la funcion")
