import Foundation

func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
   if number.isMultiple(of: n) && number.isMultiple(of: m) {
       return 1 
   } else {
       return 0
   }
}

