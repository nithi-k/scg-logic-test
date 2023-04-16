// DetectPalindrome
// Nithi Kulasiriswatdi

// MARK: - Complexity Analysis
// Time complexity: O(n), as the function iterates half through the string length once in a loop. O(n/2) = O(n)

// Memory complexity: O(1), as the function uses a constant amount of extra memory.

func detectPalindrom(_ s: String) {
   
    var isPalindrome = true
    
    // Iterate loop iterating through half of the characters of the string
    // A palindrome is supposed to exhibit symmetry, hence only requiring a half loop to be run.
    for i in 0 ..< s.count/2 {
        if s[i].lowercased() != s[s.count - i - 1].lowercased() {
            isPalindrome = false
            break
        }
    }
    
    if isPalindrome {
        print(s, "is a palindrome")
    } else {
        print(s, "isn't a palindrome")
    }
}

// I use subscripts instead of creating a character array due to Memory complexity.
// Array(string) will give O(n)
fileprivate extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

// MARK: - Test Cases
detectPalindrom("")
// Expected output: is palindrom (Empty text "reads" the same forward and backward)

detectPalindrom("a")
// Expected output: a is a palindrome

detectPalindrom("ak")
// Expected output: ak isn't a palindrome

detectPalindrom("aka")
// Expected output: aka is a palindrome

detectPalindrom("akka")
// Expected output: akka is a palindrome

detectPalindrom("akba")
// Expected output: akba isn't a palindrome

detectPalindrom("Level")
// Expected output: Level is a palindrome

detectPalindrom("Hello")
// Expected output: Hello isn't a palindrome

