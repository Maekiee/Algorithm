import Foundation

func solution(_ numbers:String) -> Int64 {
let arr3 = ["one", "two", "six"]
    let arr4 = ["four", "five", "zero", "nine"]
    let arr5 = ["three", "seven", "eight"]
    var text = ""
    var num = ""
    for i in Array(numbers) {
        text += String(i)
        if text.count == 3 && arr3.contains(text) {
            if text == "one" {
                num += "1"
                text = ""
            } else if text == "two" {
                num += "2"
                text = ""
            } else if text == "six"{
                num += "6"
                text = ""
            }
        } else if text.count == 4 && arr4.contains(text) {
            if text == "four" {
                num += "4"
                text = ""
            } else if text == "five" {
                num += "5"
                text = ""
            } else if text == "zero"{
                num += "0"
                text = ""
            } else if text == "nine" {
                num += "9"
                text = ""
            }
        } else if text.count == 5 && arr5.contains(text) {
            if text == "three" {
                num += "3"
                text = ""
            } else if text == "seven" {
                num += "7"
                text = ""
            } else if text == "eight"{
                num += "8"
                text = ""
            }
        }
    }
    return Int64(num)!
}