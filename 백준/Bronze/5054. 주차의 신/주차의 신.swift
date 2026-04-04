let testCase: Int = Int(readLine()!)!
for _ in 0..<testCase {
    var result = 0
    let visitNum = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
    for i in 0..<visitNum {
        let index = i + 1
        if index < arr.count {
            let r = arr[i] - arr[index]
            result += r
        }
    }
    print(result * 2)
}