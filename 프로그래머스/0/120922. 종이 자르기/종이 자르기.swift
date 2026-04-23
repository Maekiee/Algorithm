import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    if N == 1 && M == 1 {
        return 0 
    } else {
        return N * M - 1
    }
}