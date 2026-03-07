var input = Int(readLine()!)!
for _ in 0..<input {
    print(String(repeating: "*", count: input))
    input -= 1
}