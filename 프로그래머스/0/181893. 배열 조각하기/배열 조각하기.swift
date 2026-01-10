import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr
    for i in 0..<query.count {
        if i % 2 == 0 {
            result = Array(result[...query[i]])
        } else {
            result = Array(result[query[i]...])
        }
    }
    return result
}