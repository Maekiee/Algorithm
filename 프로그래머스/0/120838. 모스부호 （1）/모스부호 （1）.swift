import Foundation

func solution(_ letter:String) -> String {
    var result = ""
    
    
    let moreseList: [(String,String)] = [
        ("a",".-"),
        ("b","-..."),
        ("c","-.-."),
        ("d","-.."),
        ("e","."),
        ("f","..-."),
        ("g","--."),
        ("h","...."),
        ("i",".."),
        ("j",".---"),
        ("k","-.-"),
        ("l",".-.."),
        ("m","--"),
        ("n","-."),
        ("o","---"),
        ("p",".--."),
        ("q","--.-"),
        ("r",".-."),
        ("s","..."),
        ("t","-"),
        ("u","..-"),
        ("v","...-"),
        ("w",".--"),
        ("x","-..-"),
        ("y","-.--"),
        ("z","--.."),
]

    
    let splitString = letter.split(separator: " ").map { i in
        for (key, value) in moreseList {
            if i == value {
                result += key
            }
        }
    }
    
    return result

}