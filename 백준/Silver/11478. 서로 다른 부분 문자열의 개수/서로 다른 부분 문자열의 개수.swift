let input:String = readLine()!
var substrings = Set<String>()
let characters = Array(input)

for i in 0..<input.count {
    var substring = ""
    for j in i..<input.count {
        substring += String(characters[j])
        substrings.insert(substring)
    }
}

print(substrings.count)