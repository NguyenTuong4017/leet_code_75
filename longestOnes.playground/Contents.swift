import Foundation

func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var countZero = 0
    var longest = 0
    var left = 0
    
    for right in 0 ..< nums.count{
        if nums[right] == 0 {countZero += 1}

        while countZero > k {
            if nums[left] == 0 {countZero -= 1}
            left += 1
        }
        longest = max(longest, right-left+1)
    }
    
 
    
    
    
    return longest
}

longestOnes([1,1,1,0,0,0,1,1,1,1,0], 2)
