import UIKit

    
   
    
class Solution {
     
    // fonksiyonda oluşturulan n parametresine 
    func fizzBuzz(_ n: Int) -> [String] {
       
        

        
        var fizzBuzzArray = [String]()
        if n < 0 {
            return fizzBuzzArray
        }
        
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                fizzBuzzArray.append("FizzBuzz")
                
            } else if i % 3 == 0 {
                fizzBuzzArray.append("Fizz")
            } else if i % 5 == 0 {
                fizzBuzzArray.append("Buzz")
            } else {
                
                fizzBuzzArray.append("\(i)")
            }
        }
        
        return fizzBuzzArray
        
    }
}
