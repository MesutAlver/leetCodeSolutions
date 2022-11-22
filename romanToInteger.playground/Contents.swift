import UIKit



class Solution {
    func romanToInt(_ s: String) -> Int {
        
      if s.isEmpty {
            return 0
        }
        
        let dict : [String : Int] = [
            "I" : 1,
            "V" : 5,
            "X" : 10,
            "L" : 50,
            "C" : 100,
            "D" : 500,
            "M" : 1000
        ]
        
        var sum = 0
        
        for index in 0 ..< s.count {
            if (index == s.count - 1) {
                sum = sum + dict[s[index]]!
            } else if (dict[s[index]]! >= dict[s[index + 1]]!) {
                sum = sum + dict[s[index]]!
            } else {
                sum = sum - dict[s[index]]!
            }
        }
        
        return sum
    }
}

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}
