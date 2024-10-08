var input = readLine()!.map { String($0) }
var binaryArray:[String] = [ String(Int(input.first!)!, radix: 2)]
for num in input[1...] {
    let convertBinaryNum = String(Int(num)!, radix: 2)
    let makeThreeString = String(repeating: "0", count: 3 - convertBinaryNum.count) + convertBinaryNum
    binaryArray.append(makeThreeString)
}
print(binaryArray.joined())
