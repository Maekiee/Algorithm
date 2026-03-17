let input = Int(readLine()!)!
var result = [String]()
for _ in 0..<input {
    var player1 = 0
    var player2 = 0
    
    let n = Int(readLine()!)!
    
    for _ in 0..<n {
        let game = readLine()!.split(separator: " ")
        if game[0] != game[1] {
            if game[0] == "R" {
                if game[1] == "P" {
                    player2 += 1
                } else {
                    player1 += 1
                }
            } else if game[0] == "S" {
                if game[1] == "R" {
                    player2 += 1
                } else {
                    player1 += 1
                }
            } else {
                if game[1] == "S" {
                    player2 += 1
                } else {
                    player1 += 1
                }
            }
        }
    }
    
    if player1 == player2 {
        result.append("TIE")
        player1 = 0
        player2 = 0
    } else if player1 > player2 {
        result.append("Player 1")
        player1 = 0
        player2 = 0
    } else {
        result.append("Player 2")
        player1 = 0
        player2 = 0
    }
}

result.forEach { print($0) }