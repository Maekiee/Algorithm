import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var result: [Int] = [0,0]
    let xMaxValue = (board[0] - 1) / 2
    let yMaxValue = (board[1] - 1) / 2
    
    for i in keyinput {
        if i == "left" && result[0] > -xMaxValue && result[0] <= xMaxValue {
            result[0] -= 1
        } else if i == "right" && result[0] >= -xMaxValue && result[0] < xMaxValue {
            result[0] += 1
        } else if i == "up" && result[1] >= -yMaxValue && result[1] < yMaxValue {
            result[1] += 1
        } else if i == "down" && result[1] > -yMaxValue && result[1] <= yMaxValue {
            result[1] -= 1
        } 
    }
    
    
    return result
}