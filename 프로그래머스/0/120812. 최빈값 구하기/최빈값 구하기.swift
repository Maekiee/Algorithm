import Foundation

func solution(_ array:[Int]) -> Int {
    var result = -1
    var countDict: [Int:Int] = [:]
    for i in array {
        if countDict[i] == nil {
            countDict[i] = 1
        } else if countDict[i] != nil {
            countDict[i] = countDict[i]! + 1
        }
    }
    if let maxValue = countDict.values.max() {
        let topKey = countDict.filter { $0.value == maxValue }.map { $0.key }
        if topKey.count > 1 {
            return -1
        } else {
            result = topKey[0]
        }
    }
    
    return result
}