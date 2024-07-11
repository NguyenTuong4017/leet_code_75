import Foundation
func increasingTriplet(_ nums: [Int]) ->  Bool{

    var small: Int = .max
    var mid: Int = .max
    
    for num in nums {
        if num < small {
            small = num
        } else if num > small && num < mid {
            mid = num
        } else if num > mid {
            return true
        }
    }
        
   
    
    
    
    
    return false
}

increasingTriplet([20,13,10,12,5,13])
