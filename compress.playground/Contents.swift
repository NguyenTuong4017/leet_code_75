import Foundation



func compress(_ chars: inout [Character]) -> Int {
    var count = [Character: Int]()
    var numberString = ""
    
    count[chars[0],default: 0] += 1
    
    for i in 1 ..< chars.count {
        count[chars[i], default: 0] += 1
        if chars[i] != chars[i-1] {
            if count[chars[i-1]]! > 1 {
                numberString += String(chars[i-1]) + String(count[chars[i-1]]!)
            } else {
                numberString += String(chars[i-1])
            }
            count[chars[i-1]] = 0
        }
    }
    
    
    if count[chars[chars.count - 1]]! > 1 {
        numberString += String(chars[chars.count-1]) + String(count[chars[chars.count-1]]!)
    } else {
        numberString += String(chars[chars.count-1])
    }
    
    chars = Array(numberString)
    
    return numberString.count
}


var chars: [Character]  = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]

compress(&chars)
