import Foundation

func maxArea(_ height: [Int]) -> Int {
    var maxArea = 0
    var startIndex = 0
    var lastIndex = height.count - 1
    var area: Int

    while startIndex <= lastIndex {
        area = min(height[startIndex], height[lastIndex]) * (lastIndex - startIndex)
        maxArea = max(maxArea, area)
        
        if height[startIndex] < height[lastIndex] {
            startIndex += 1
        } else {
            lastIndex -= 1
        }
        
        
    }
        
    
    
    
    return maxArea
}


maxArea([1,8,6,2,5,4,8,7,3])
