import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var arr: [String] = A.map { String($0) }
    var count = 0
    
    for _ in 0..<arr.count {
        if arr.joined() == B {
            return count
        }
        
        count += 1
        
        if let last = arr.popLast() {
            arr.insert(last, at: 0)
        }
    }
    
    return -1
}