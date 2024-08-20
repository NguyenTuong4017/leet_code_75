import Foundation

func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    var numsCount = [Int: Int]()
    var operation = 0
    
    
    for ele in nums {
        let abstract = k - ele
        if let count = numsCount[abstract], count > 0 {
            numsCount[abstract]! -= 1
            operation += 1
        } else {
            numsCount[ele, default: 0] += 1
        }
    }
    
        
    
 
    
  
    
    return operation
}


maxOperations([3,4,4,2,4,3], 6)
