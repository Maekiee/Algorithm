import Foundation

func solution(_ n:Int) -> Int {
    var x = 1.0
    
    while true {
        let result = x * x
        
        if Int(result) == n {
            return 1
        }
        
        if Int(result) > n {
            break
        }
        
        x += 1
    }
    
    return 2
}