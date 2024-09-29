import Foundation

struct MaxHeap {
    private var list: [Int] = []
    
    mutating func insert(_ value: Int) {
        list.append(value)
        var index = list.count - 1
        
        while index > 0 {
            let parentIndex = (index - 1) / 2
            if list[index] > list[parentIndex] {
                list.swapAt(index, parentIndex)
                index = parentIndex
            } else {
                break
            }
        }
    }
    
    mutating func remove() -> Int? {
        guard !list.isEmpty else { return nil }
        if list.count == 1 {
            return list.removeFirst()
        }
        
        let maxValue = list[0]
        list[0] = list.removeLast()
        heapify(0)
        return maxValue
    }
    
    private mutating func heapify(_ index: Int) {
        let left = index * 2 + 1
        let right = index * 2 + 2
        var largest = index
        
        if left < list.count && list[left] > list[largest] {
            largest = left
        }
        
        if right < list.count && list[right] > list[largest] {
            largest = right
        }
        
        if largest != index {
            list.swapAt(index, largest)
            heapify(largest)
        }
    }
}

let countNum = Int(readLine()!)!
var maxHeap = MaxHeap()

for _ in 0..<countNum {
    let inputValue = Int(readLine()!)!
    
    if inputValue > 0 {
        maxHeap.insert(inputValue)
    } else if inputValue == 0 {
        if let maxValue = maxHeap.remove() {
            print(maxValue)
        } else {
            print(0)
        }
    }
}
