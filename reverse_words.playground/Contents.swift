import Foundation

func reverseWords(_ s: String) -> String {
    var words = s.split(separator: " ")
    var result = ""
    
    for i in stride(from: words.count-1, to: 0, by: -1) {
        result += words[i] + " "
    }
    
    return result + words[0]
}

reverseWords("a    good     example     ")
