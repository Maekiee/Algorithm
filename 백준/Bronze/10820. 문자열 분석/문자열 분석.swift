var result: [[Int]] = []
var lines: [String] = []
while let line = readLine() {
    lines.append(line)
}

lines.forEach {
    var counts = [0, 0, 0, 0]
    for i in $0 {
        if i.isLowercase {
            counts[0] += 1
        } else if i.isUppercase {
            counts[1] += 1
        } else if i.isNumber {
            counts[2] += 1
        } else if i == " " {
            counts[3] += 1
        }
    }
    result.append(counts)
}

result.forEach {
    let item = $0.map { String($0) }.joined(separator: " ")
    print(item)
}