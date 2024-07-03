import Foundation

func reverseVowels(_ s: String) -> String {
    var clone = Array(s)
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var lastVowels = 0
    
    for z in stride(from: clone.count-1, through: 0, by: -1) {
        if vowels.contains(clone[z]) {
            lastVowels = z
            break
        }
    }
    for i in stride(from: 0, through: lastVowels-1, by: 1) {
        if vowels.contains(clone[i]) {
            for z in stride(from:lastVowels, through: i+1, by: -1) {
                if vowels.contains(clone[z]) {
                    let temp = clone[i]
                    clone[i] = clone[z]
                    clone[z] = temp
                    lastVowels = z - 1
                    break
                }
            }
        }
        
    }
    
    return String(clone)
}

reverseVowels("u'o;B,vKO\"?,.;?fGI 9;`9T`Z,;iqsn4A.:;'H3s8E9. B4TxfOiB'wvM?q'k:Q`J\"E1T7lo e7c!?glI66?JZh\"6 !C,aK! 1J?f9'`SX4Q!Q4XS`'9f?J1 !Ka,C! 6\"hZJ?66Ilg?!c7e ol7T1E\"J`Q:k'q?Mvw'BiOfxT4B .9E8s3H';:.A4nsqi;,Z`To`;o IGf?;.,?\"OKv,B;o'u")
