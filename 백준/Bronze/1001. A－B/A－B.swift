let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
func minus(_ a: Int, _ b: Int) -> Void {
    print(a-b)
}
minus(input[0], input[1])