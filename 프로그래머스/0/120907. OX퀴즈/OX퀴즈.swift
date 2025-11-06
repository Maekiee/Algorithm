import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result: [String] = []
    for i in quiz {
        let arr = i.split(separator: " ").map { String($0) }
        if arr[1] == "-" {
            let value = Int(arr[0])! - Int(arr[2])!
            let isCorrect = Int(arr[4]) == value ? "O" : "X"
            result.append(isCorrect)
        } else {
            let value = Int(arr[0])! + Int(arr[2])!
            let isCorrect = Int(arr[4]) == value ? "O" : "X"
            result.append(isCorrect)
        }
    }
    return result
}