import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var arr: [Int] = []
    
    for num in num_list {
        arr.append(num)
        
        if arr.count == n {
            result.append(arr)
            arr = []
        }
        
    }
    
     if !arr.isEmpty {
         result.append(arr)
    }
    
    return result
    
}