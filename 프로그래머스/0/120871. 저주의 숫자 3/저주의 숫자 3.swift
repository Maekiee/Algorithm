import Foundation

func solution(_ n:Int) -> Int {
    let arr = (1...300).filter {
        $0 % 3 != 0 && !String($0).contains("3")
    }
    
    return arr[n - 1]
}