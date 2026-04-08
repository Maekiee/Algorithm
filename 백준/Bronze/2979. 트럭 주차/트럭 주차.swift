let abc = readLine()!.split(separator: " ").map { Int($0)! }
let rate = [0, abc[0], abc[1], abc[2]]
var time = [Int](repeating: 0, count: 101)

for _ in 0..<3 {
    let t = readLine()!.split(separator: " ").map { Int($0)! }
    for i in t[0]..<t[1] {
        time[i] += 1
    }
}
let total = time.reduce(0) { $0 + $1 * rate[$1] }
print(total)