import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var arr = A.map { String($0) }
    let lastIndex = arr.count - 1
    var count = 1 
    if A == B {
        return 0 
    } else {
        while count < arr.count {
            let lastValue = arr[lastIndex]
            arr.removeLast()
            arr.insert(lastValue, at: 0)
            if arr.joined() == B {
                return count
            } 
            count += 1
        }
    }
    
    return -1
}