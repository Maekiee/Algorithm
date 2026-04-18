var arr = [Int]()
for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}

let target = arr.reduce(0, +) - 100

outer: for i in 0..<9 {
    for j in (i+1)..<9 {
        if arr[i] + arr[j] == target {
            var real = arr
            real.remove(at: j)
            real.remove(at: i)
            real.sorted().forEach { print($0) }
            break outer
        }
    }
}