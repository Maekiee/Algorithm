import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.min { a, b in
        let diff0 = abs(a - n)
        let diff1 = abs(b - n)
        
        if diff0 == diff1  {
            return a < b
        }
        
        return diff0 < diff1
    }!
}