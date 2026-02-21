import Foundation

func solution(_ polynomial:String) -> String {
    let arr = polynomial.components(separatedBy: " + ")
    var result: [String] = []
    var xCount = 0
    var numCount = 0 
    
    for item in arr {
        if item == "x" {
            xCount += 1 
        } else if item.count >= 2 && item.contains("x") {
            let num = item.dropLast()
            xCount += Int(num)!
        } else {
            numCount += Int(item)!
        }
    }
    
    if xCount == 1 {
        result.append("x")
    } else if xCount > 1 {
        result.append("\(xCount)x")
    }
    
    if numCount != 0 {
        result.append("\(numCount)")
    }
    
    
    return result.joined(separator: " + ")
}