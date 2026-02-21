import Foundation

func solution(_ polynomial:String) -> String {
    let arr = polynomial.components(separatedBy: " + ")
    var coef = 0
    var num = 0
    var result = [String]()
    
    for item in arr {
        if item == "x" {
            coef += 1
        } else if item.count >= 2 && item.contains("x") {
            let numPart = item.dropLast()
            coef += Int(numPart)!
        } else {
            num += Int(item)!
        }
    }
    
    if coef == 1 {
        result.append("x")
    } else if coef > 1 {
        result.append("\(coef)x")
    }
    
    if num != 0 {
        result.append("\(num)")
    }
    
    
    return result.joined(separator: " + ")
}