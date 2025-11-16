import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    let arrIndex = Array(code).map { String($0) }
    var result: [String] = []
    for i in 0..<arrIndex.count {
        if i % q == r {
            result.append(arrIndex[i])
        }
    }
    return result.joined()
}