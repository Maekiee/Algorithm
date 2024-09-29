import Foundation

struct MinHeap {
    private var array: [Int] = []
    
    
    mutating func insert(_ value: Int) {
        array.append(value)
        var index = array.count - 1
        
        while index > 0 {
            let parentIndex = (index - 1) / 2
            if array[index] < array[parentIndex] {
                array.swapAt(index, parentIndex)
                index = parentIndex
            } else {
                break
            }
        }
    }
    
    mutating func remove() -> Int? {
        guard !array.isEmpty else { return nil }
        if array.count == 1 {
            return array.removeFirst()
        }
        let minValue = array[0]
        array[0] = array.removeLast()
        heapify(0)
        return minValue
    }
    
    private mutating func heapify(_ index: Int) {
        let left = index * 2 + 1
        let right = index * 2 + 2
        var smallest = index
        
        if left < array.count && array[left] < array[smallest] {
            smallest = left
        }

        if right < array.count && array[right] < array[smallest] {
            smallest = right
        }

        if smallest != index {
            array.swapAt(index, smallest)
            heapify(smallest)
        }
    }
}


let countNum = Int(readLine()!)!
var minHeap = MinHeap()

for _ in 0..<countNum {
    let inputValue = Int(readLine()!)!
    
    if inputValue > 0 {
        minHeap.insert(inputValue)
    } else if inputValue == 0 {
        if let minValue = minHeap.remove() {
            print(minValue)
        } else {
            print(0)
        }
    }
}
