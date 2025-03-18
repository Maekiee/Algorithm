import Foundation

func solution(_ n: Int, _ m: Int, _ x: Int, _ y: Int, _ r: Int, _ c: Int, _ k: Int) -> String {
    // 맨해튼 거리 계산
    let manhattanDistance = abs(x - r) + abs(y - c)
    
    // k가 맨해튼 거리보다 작거나, 차이가 홀수인 경우 불가능
    if manhattanDistance > k || (k - manhattanDistance) % 2 != 0 {
        return "impossible"
    }
    
    // 사전순으로 방향 정의 (d, l, r, u)
    let dx = [1, 0, 0, -1]
    let dy = [0, -1, 1, 0]
    let directions = ["d", "l", "r", "u"]
    
    var result = ""
    
    func dfs(_ currX: Int, _ currY: Int, _ steps: Int, _ path: String) -> Bool {
        // k 단계를 모두 이동한 경우
        if steps == k {
            // 목적지에 도달했는지 확인
            if currX == r && currY == c {
                result = path
                return true
            }
            return false
        }
        
        // 남은 거리와 단계 계산
        let remainingDistance = abs(currX - r) + abs(currY - c)
        let remainingSteps = k - steps
        
        // 목적지에 도달 가능한지 검사
        // 1. 남은 단계가 남은 거리보다 작으면 불가능
        // 2. 남은 단계와 남은 거리의 차이가 홀수면 불가능
        if remainingDistance > remainingSteps || (remainingSteps - remainingDistance) % 2 != 0 {
            return false
        }
        
        // 사전순으로 모든 방향 탐색
        for i in 0..<4 {
            let newX = currX + dx[i]
            let newY = currY + dy[i]
            
            // 격자 내부인지 확인
            if newX >= 1 && newX <= n && newY >= 1 && newY <= m {
                if dfs(newX, newY, steps + 1, path + directions[i]) {
                    return true
                }
            }
        }
        
        return false
    }
    
    _ = dfs(x, y, 0, "")
    
    return result.isEmpty ? "impossible" : result
}