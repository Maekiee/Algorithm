import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {    
    var arr = numbers
    var count = 0
    for _ in 0..<k {
        count += 2
        if count >= arr.count {
            arr += numbers
        }
    }
    count = arr[count - 2]
    return count
}