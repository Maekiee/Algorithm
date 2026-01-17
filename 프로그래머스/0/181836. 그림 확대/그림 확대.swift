import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var arr: [String] = []
    
    picture.forEach {
        var text = ""
        for i in $0 {
            text += String(repeating: i, count: k)
        }
        for _ in 0..<k {
            arr.append(text)
        }
    }
    
    return arr
}