import Foundation


let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

let testCase: Int = Int(readLine()!)!


for i in 0..<testCase {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let m = input[0]
    let n = input[1]
    let k = input[2]
    solve(m: m, n: n, k: k)
}

func solve(m:Int, n:Int, k:Int) -> Void {
    
    var field = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    
    for _ in 0..<k {
        let coordinate = readLine()!.split(separator: " ").map { Int(String($0))! }
        let x = coordinate[0]
        let y = coordinate[1]
        field[y][x] = 1
    }
    
    var wormCount = 0
    
    for y in 0..<n {
        for x in 0..<m {
            if field[y][x] == 1 {
                dfs(field: &field, x: x, y: y, m: m, n: n)
                wormCount += 1
            }
        }
    }
    
    print(wormCount)
    
}


func dfs(field: inout [[Int]], x: Int, y: Int, m: Int, n: Int) {
    field[y][x] = 0
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if isValid(x: nx, y: ny, m: m, n: n) && field[ny][nx] == 1 {
            dfs(field: &field, x: nx, y: ny, m: m, n: n)
        }
    }
}

func isValid(x: Int, y: Int, m: Int, n: Int) -> Bool {
    return x >= 0 && x < m && y >= 0 && y < n
}
