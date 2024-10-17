var a: [Int] = []
var ret: (Int, Int) = (0, 0)

for _ in 0..<9 {
    let input: Int = Int(readLine()!)!
    a.append(input)
}

var x = a.reduce(0, +) - 100

for i in 0...7 {
    for j in i+1...8 {
        if a[i] + a[j] == x {
            ret = (a[i], a[j])
            break
        }
    }
}

a.remove(at: a.firstIndex(of: ret.0)!)
a.remove(at: a.firstIndex(of: ret.1)!)

a.sort()

for i in a {
    print(i)
}