import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let averageArray = score.map { Double($0[0] + $0[1]) / 2.0 }
    let sortedArray = averageArray.sorted(by: >)
    return averageArray.map { sortedArray.firstIndex(of: $0)! + 1 }
}