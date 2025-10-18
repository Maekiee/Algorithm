import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let sum = a + b + c
    let sumSeconde = Int(pow(Double(a), 2) + pow(Double(b), 2) + pow(Double(c), 2))
    let sumThird = Int(pow(Double(a), 3) + pow(Double(b), 3) + pow(Double(c), 3))
    if a != b && b != c && a != c {
        return sum
    } else if a == b && b == c && a == c {
       return sum * sumSeconde * sumThird
    } else {
       return sum * sumSeconde
    }
}