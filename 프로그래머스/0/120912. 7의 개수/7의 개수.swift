import Foundation

func solution(_ array:[Int]) -> Int {
    var result = 0
    
    var numbers = array.flatMap { String($0).compactMap { $0.wholeNumberValue }}
    numbers.forEach { num in
        if num == 7 {
            result += 1
        }
    }
    return result
}