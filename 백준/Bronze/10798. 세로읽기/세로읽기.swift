let lines = (0..<5).map { _ in Array(readLine()!) }
let maxLen = lines.map { $0.count }.max()!
var result = ""

for col in 0..<maxLen {
    for row in 0..<5 {
        if col < lines[row].count {
            result.append(lines[row][col])
        }
    }
}

print(result)