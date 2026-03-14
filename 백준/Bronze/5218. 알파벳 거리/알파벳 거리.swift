let dict = [
    "A":1,"B":2,"C":3,"D":4,"E":5,
    "F":6,"G":7,"H":8,"I":9,"J":10,
    "K":11,"L":12,"M":13,"N":14,"O":15,
    "P":16,"Q":17,"R":18,"S":19,"T":20,
    "U":21,"V":22,"W":23,"X":24,"Y":25,
    "Z":26,
]
let input = Int(readLine()!)!
var arrX = [[String]]()
var arrY = [[String]]()
for _ in 0..<input {
    let textArr = readLine()!.map { String($0) }.split(separator: " ").map { Array($0) }
    arrX.append(textArr[0])
    arrY.append(textArr[1])
}

for i in 0..<arrX.count {
    var arr = [String]()
    for j in 0..<arrX[i].count {
        let x = dict[arrX[i][j]]!
        let y = dict[arrY[i][j]]!
        
        if y >= x {
            let num = y - x
            arr.append(String(num))
        } else if y < x {
            let num = (y+26) - x
            arr.append(String(num))
        }
    }
    print("Distances: \(arr.joined(separator: " "))")
    arr = []
}