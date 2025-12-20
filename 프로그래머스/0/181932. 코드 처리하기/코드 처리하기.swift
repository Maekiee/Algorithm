import Foundation
func solution(_ code:String) -> String {
    var result = ""
    var mode = 0
    var arr = Array(code)
    
    for i in 0..<arr.count {
        if arr[i] == "1" {
            mode = mode == 1 ? 0 : 1
        } else {
            if i % 2 == 0 && mode == 0 {
                result.append(arr[i])
            } else if i % 2 == 1 && mode == 1 {
                result.append(arr[i])
            }
        }
    }
    
    
    return result.isEmpty ? "EMPTY" : result
}