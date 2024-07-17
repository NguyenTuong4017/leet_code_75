import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var count = 0
    
    nums = nums.filter { value in
        if value == 0 {
            count += 1
            return false
        } else {
            return true
        }
    }
    
    for i in 0 ..< count {
        nums.append(0)
    }
    
    
}

var nums: [Int] = [0,0,1]
moveZeroes(&nums)

print(nums)

