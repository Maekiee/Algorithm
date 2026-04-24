import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let arr = dic.filter { $0.count == spell.count }
    var result = 2
    for i in arr {
        if spell.allSatisfy ({ i.contains($0) }) {
            result = 1
            break
        } 
    }
    return result 
}