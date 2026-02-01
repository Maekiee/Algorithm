import Foundation

func solution(_ array:[Int]) -> Int {
    var result = 0
    array.map { String($0) }.joined(separator: "").forEach {
        if $0 == "7" {
            result += 1
        }
    }
    return result
}