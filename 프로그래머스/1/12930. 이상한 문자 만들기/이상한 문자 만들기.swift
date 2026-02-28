func solution(_ s:String) -> String {
    var count = 0 
    return s.map {
        var w = String($0)
        if count % 2 == 0 && w != " " {
            w = w.uppercased()
            count += 1
        } else if count % 2 != 0 && w != " " {
            w = w.lowercased()
            count += 1
        } else if w == " " {
            count = 0
        }
        return w
    }.joined()
}