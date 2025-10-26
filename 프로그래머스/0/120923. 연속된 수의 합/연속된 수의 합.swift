import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let startNum = (total / num) - (num - 1) / 2
    print(startNum)
    return (0..<num).map { startNum + $0}
}