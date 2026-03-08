let input = Int(readLine()!)!
var num = input
for i in 0..<input {
    let space = String(repeating: " ", count: input - (i+1))
    let star = String(repeating: "*", count: i + 1)
    print(space + star)
}