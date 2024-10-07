let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
func divided(_ a: Int, _ b: Int) -> Void {
    print(Double(a)/Double(b))
}
divided(input[0], input[1])
