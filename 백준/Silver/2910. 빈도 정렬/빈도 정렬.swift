
let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
let n = firstLine[0] 
let c = firstLine[1] 
let sequence = readLine()!.split(separator: " ").map { Int($0)! }


var frequency: [Int: Int] = [:] 
var order: [Int] = [] 

for number in sequence {
    if frequency[number] == nil {
        order.append(number) 
    }
    frequency[number, default: 0] += 1
}


let sortedSequence = order.sorted {
    let freq1 = frequency[$0]! 
    let freq2 = frequency[$1]! 
    
    if freq1 == freq2 {

        return order.firstIndex(of: $0)! < order.firstIndex(of: $1)!
    }

    return freq1 > freq2
}


let result = sortedSequence.flatMap { Array(repeating: $0, count: frequency[$0]!) }


print(result.map { String($0) }.joined(separator: " "))