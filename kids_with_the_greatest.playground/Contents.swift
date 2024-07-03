import Foundation

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var result = [Bool]()
    
    for var ele in candies {
        ele += extraCandies
        var max = candies.max()
        if ele >= max! {result.append(true)}
        else {result.append(false)}
        ele -= extraCandies
    }
    
    
    return result
}

kidsWithCandies([12,1,12], 10)
