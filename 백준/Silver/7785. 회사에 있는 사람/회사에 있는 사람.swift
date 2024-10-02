var dict = [String : Bool]()
let logCount = Int(readLine()!)!

for _ in 0..<logCount {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[1] == "enter" {
        dict[input[0]] = true
    } else {
        dict[input[0]] = nil 
    }
}

dict.keys.sorted(by: >).forEach { name in
    print(name)
}