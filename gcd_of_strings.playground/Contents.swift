import Foundation
func gcd (_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    } else {
        var max = max(a, b)
        var min = min(a, b)
        
        while min != 0 {
            var tmp = max % min
            max = min
            min = tmp
        }
        return max
    }
}


func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    let nums = gcd(str1.count, str2.count)
    
    let result = String(str1.prefix(nums))
    
    if str1 + str2 == str2 + str1 {
        return result
    }
 
    
    return ""
}

gcdOfStrings("ABCABC", "ABc")
