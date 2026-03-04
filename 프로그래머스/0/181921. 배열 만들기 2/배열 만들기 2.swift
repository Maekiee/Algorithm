import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    let arr = (l...r).filter {
        String($0).allSatisfy { $0 == "5" || $0 == "0"}
    }
    return arr.isEmpty ? [-1] : arr
}