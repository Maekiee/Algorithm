import Foundation

func solution(_ str_list:[String]) -> [String] {
    var result:[String] = []
    var index = 0
    var isR = false
    while index < str_list.count {
        if !str_list.contains("r") && !str_list.contains("l") {
            break
        } else {
            if str_list[index] != "r" && str_list[index] != "l" {
                result.append(str_list[index])
            } else if str_list[index] == "l" && !isR {
                break
            } else if str_list[index] == "l" && isR {
                result.append(str_list[index])
            } else if str_list[index] == "r" && result.isEmpty && index > 0 && isR {
                result.append(str_list[index])
            } else if str_list[index] == "r" && isR {
                result.append(str_list[index])
            } else if str_list[index] == "r" && !result.isEmpty && !isR {
                result = []
                isR = true
            } else if str_list[index] == "r" && index == 0 {
                isR = true
            }
        }
        index += 1
    }
    
    return result
}