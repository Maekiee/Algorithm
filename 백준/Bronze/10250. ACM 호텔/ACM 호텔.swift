let count = Int(readLine()!)!
var arr = [String]()
for _ in 0..<count {
    let inputArr = readLine()!.split(separator: " ").map { Int($0)! }
    let h = inputArr[0]
    let n = inputArr[2]
    
    var number = n / h
    var floor = 0
    
    if n % h == 0 {
        floor = h
    } else {
        floor = n % h
        number += 1
    }

    if number > 9 {
        arr.append("\(floor)\(number)")
    } else {
        arr.append("\(floor)0\(number)")
    }
}

arr.forEach {
    print($0)
}