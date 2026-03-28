let num = Int(readLine()!)!
var dict: [String: Int] = [:]
for _ in 0..<num {
    let player = readLine()!
    let key = String(player.first!)
    dict[key, default: 0] += 1
}
let name = dict.filter { $0.value >= 5 }.map { $0.key }.sorted().joined()
if name.isEmpty {
    print("PREDAJA")
} else {
    print(name)
}