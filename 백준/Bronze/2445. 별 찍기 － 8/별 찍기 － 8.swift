let input = Int(readLine()!)!
var space = input * 2
let count = input * 2
var num = input
for i in 0..<count - 1 {
    if i <= (count - 1) / 2 {
        space -= 2
        num -= 1
    } else if i >= (count - 1) / 2 {
        space += 2
        num += 1
    }
    
    let leading = String(repeating: "*", count: input - num)
    let inner = String(repeating: " ", count: space)
    let traling = String(repeating: "*", count: input - num)
    
    if i == (count - 1) / 2 {
        print(leading + traling)
    } else {
        print(leading + inner + traling)
    }
}