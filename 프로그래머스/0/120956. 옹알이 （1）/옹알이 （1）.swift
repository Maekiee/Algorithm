import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var result = 0
    
    for i in babbling {
        var word = String(i)
        for j in words {
            if word.contains(j) {
                word = word.replacingOccurrences(of: j, with: " ")
            }
        }
        word = word.trimmingCharacters(in: .whitespaces)
        if word.isEmpty {
            result += 1
        }
    }
    
    return result
}