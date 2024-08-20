import Foundation



func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var sum = 0.0
    var index = 0
    var max: Double
    
    for i in 0 ..< k {
        sum += Double(nums[i])
    }
    max = sum
    
    for i in k ..< nums.count {
        sum += Double(nums[i])
        sum -= Double(nums[index])
        if max < sum {max = sum}
        
        index += 1
    }
    
    
    return max / Double(k)
}


findMaxAverage([9,7,3,5,6,2,0,8,1,9], 4)
