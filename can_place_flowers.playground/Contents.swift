import Foundation



func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var count = 0
    var clone = flowerbed
    if n > 0 {
        for i in 0 ..< clone.count {
            if clone[i] == 0 {
                if (i == 0 || clone[i-1] == 0) && (i == clone.count - 1 || clone[i+1] == 0) {
                    clone[i] = 1
                    count += 1
                }
            }
            if count == n {
                return true
            }
        }
    } else {
        return true
    }

    
    
    
    return false
}


canPlaceFlowers([0], 1)
