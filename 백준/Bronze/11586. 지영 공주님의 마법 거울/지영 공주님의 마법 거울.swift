let n = Int(readLine()!)!
var arr = [String]()
for _ in 0..<n {
    let input = readLine()!
    arr.append(input)
}
var condition = Int(readLine()!)!
if condition == 1 {
    arr.forEach {
        print($0)
    }
} else if condition == 2 {
    arr.forEach {
        print(String($0.reversed()))
    }
} else if condition == 3 {
    arr.reversed().forEach {
        print($0)
    }
}