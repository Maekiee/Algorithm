let input1 = Array(readLine()!)
let input2 = Array(readLine()!)
    
var dict1 = [String: Int]()
var dict2 = [String: Int]()
    
    
for i in input1 {
    dict1[String(i), default: 0] += 1
}
    
for j in input2 {
    dict2[String(j), default: 0] += 1
}
    
let commonKey = Set(dict1.keys).intersection(dict2.keys)
var dict: [String: Int] = [:]
for key in commonKey {
    if let val1 = dict1[key], let val2 = dict2[key] {
        dict[key] = min(val1, val2)
    }
}
var sum = dict.values.reduce(0, +) * 2
var result = 0
result = input1.count + input2.count - sum
print(result)
    
    
