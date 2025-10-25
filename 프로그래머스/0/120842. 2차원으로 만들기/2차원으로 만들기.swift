import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
     return (0..<num_list.count / n).map { row in
        print(row)
        let start = row * n
        let end = start + n
        return num_list[start..<end].map { $0 }
    }
}