import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var str = my_string
    let start = str.index(str.startIndex, offsetBy: s)
    let end = str.index(str.startIndex, offsetBy: e)
    let substr = str[start...end]
    let reversedStr = String(substr.reversed())
    str.replaceSubrange(start...end, with: reversedStr)
    return str
}