let num = Int(readLine()!)!
var nums = [num / 10, num % 10]
var i = 0

while i < nums.count {
    let nextNum = nums[i] + nums[i+1]
    if nextNum < 10 {
        nums.append(nextNum)
    } else {
        let lastNum = nextNum % 10
        nums.append(lastNum)
    }
    let foundNum = nums[i+1] * 10 + nums[i+2]
    i += 1
    if foundNum == num {
        break
    }
        
}
print(i)