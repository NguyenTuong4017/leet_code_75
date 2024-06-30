import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var arr1 = Array(word1)
    var arr2 = Array(word2)
    var result = [Character]()
    if arr1.count >= arr2.count {
        for i in 0 ..< arr2.count {
            result.append(arr1[i])
            result.append(arr2[i])
        }
        for i in arr2.count ..< arr1.count {
            result.append(arr1[i])
        }
    } else {
        for i in 0 ..< arr1.count {
            result.append(arr1[i])
            result.append(arr2[i])
        }
        for i in arr1.count ..< arr2.count {
            result.append(arr2[i])
        }
    }

     
    
    return String(result)
}

mergeAlternately("ab", "xyzd")
