let input = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
for i in input {
    count += i
}
print(count)