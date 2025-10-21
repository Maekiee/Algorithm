import Foundation

func solution(_ order:[String]) -> Int {
    var sum = 0
    for i in order {
        if i == "iceamericano" || i == "americanoice" || i == "americano" || i == "hotamer  icano" || i == "americanohot" {
            sum += 4500
        } else if i == "icecafelatte" || i == "cafelatteice" || i == "hotcafelatte" || i == "cafelattehot" || i == "cafelatte" {
            sum += 5000
        } else {
            sum += 4500
        }
    }
    return sum
}