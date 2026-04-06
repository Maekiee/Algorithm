let input = readLine()!.split(separator: " ").map { Int($0)! }
var number = (1...input[0]).map { String($0) }
for _ in 0..<input[1] {
    let v = readLine()!.split(separator: " ").map { Int($0)! }
    let start = v[0] - 1
    let end = v[1] - 1
    number[start...end].reverse()
}
print(number.joined(separator: " "))
