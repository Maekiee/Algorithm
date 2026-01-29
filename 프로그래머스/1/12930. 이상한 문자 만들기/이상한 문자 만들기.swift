func solution(_ s:String) -> String {
    var count = 0
    let result = s.map{ String($0) }.map { (wordSub) -> String in
        let converted = wordSub.enumerated().map { (index, char) -> String in
            if char != " " {
                count += 1
                return count % 2 == 1 ? char.uppercased() : char.lowercased()
            } else {
                count = 0
                return " "
            }
        }
        
        return converted.joined()
    }.joined()
    
    return result
}