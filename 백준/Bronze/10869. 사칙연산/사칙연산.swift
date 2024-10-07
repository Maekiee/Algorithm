let input: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
func basicOperations(_ a: Int, _ b: Int) -> Void {
    print(a+b)
    print(a-b)
    print(a*b)
    print(a/b)
    print(a%b)
}
basicOperations(input[0], input[1])