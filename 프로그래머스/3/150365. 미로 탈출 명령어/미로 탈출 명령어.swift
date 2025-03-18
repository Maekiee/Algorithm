import Foundation

// 상태를 정의하는 구조체 (Comparable 채택으로 경로 비교 가능)
struct State: Comparable {
    let i: Int      // 현재 행
    let j: Int      // 현재 열
    let dist: Int   // 이동 거리
    let path: String // 이동 경로
    
    static func < (lhs: State, rhs: State) -> Bool {
        return lhs.path < rhs.path // 사전 순 비교
    }
}

// 우선순위 큐 구현
struct PriorityQueue<Element: Comparable> {
    private var elements: [Element] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    mutating func enqueue(_ element: Element) {
        elements.append(element)
        elements.sort() // 경로 기준 오름차순 정렬
    }
    
    mutating func dequeue() -> Element? {
        return isEmpty ? nil : elements.removeFirst()
    }
}

// 솔루션 함수
func solution(_ n: Int, _ m: Int, _ x: Int, _ y: Int, _ r: Int, _ c: Int, _ k: Int) -> String {
    // 이동 방향: 사전 순으로 d, l, r, u
    let directions = [(1, 0, "d"), (0, -1, "l"), (0, 1, "r"), (-1, 0, "u")]
    var queue = PriorityQueue<State>()
    var visited = Set<String>()
    
    // 초기 상태 설정
    let start = State(i: x, j: y, dist: 0, path: "")
    queue.enqueue(start)
    
    while !queue.isEmpty {
        guard let current = queue.dequeue() else { break }
        let (i, j, dist, path) = (current.i, current.j, current.dist, current.path)
        
        // 목표 지점에 도달했고, 이동 거리가 k라면 경로 반환
        if i == r && j == c && dist == k {
            return path
        }
        
        // 이동 거리가 k를 초과하면 탐색 중단
        if dist >= k {
            continue
        }
        
        // 네 방향으로 이동 시도
        for (di, dj, move) in directions {
            let ni = i + di
            let nj = j + dj
            
            // 격자 범위 내에서만 이동 가능
            if ni >= 1 && ni <= n && nj >= 1 && nj <= m {
                let newPath = path + move
                let key = "\(ni),\(nj),\(dist + 1),\(newPath)"
                
                // 방문 체크: 동일 상태(위치, 거리, 경로) 중복 방지
                if !visited.contains(key) {
                    visited.insert(key)
                    
                    // 맨해튼 거리 계산
                    let manhattan = abs(ni - r) + abs(nj - c)
                    let remaining = k - dist - 1
                    
                    // 남은 거리가 맨해튼 거리 이상이고, 패리티가 맞아야 탐색 계속
                    if remaining >= manhattan && (remaining - manhattan) % 2 == 0 {
                        queue.enqueue(State(i: ni, j: nj, dist: dist + 1, path: newPath))
                    }
                }
            }
        }
    }
    
    // 탈출 불가능한 경우
    return "impossible"
}