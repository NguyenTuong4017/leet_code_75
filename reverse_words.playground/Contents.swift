import Foundation

func reverseWords(_ s: String) -> String {
    var words = s.split(separator: " ")
    words = words.reversed()
    let result = words.joined(separator: " ")
    
    return result
}

reverseWords("a    good     example     ")
