//
//  RecursionPermutations.swift
//  Playground
//
//  Created by Admin on 2023-04-07.
//

import Foundation

struct RecursionPermutations {
    func generateAllPermutations(_ str: String, _ ans: String = "") {
        if str.isEmpty {
            print(ans)
            return
        }
        
        for i in 0...ans.count {
            let firstPartStr = ans[0..<i]
            let char = String(str.first!)
            let secondPartStr = ans[i..<ans.count]
            generateAllPermutations(String(str.dropFirst()), firstPartStr + char + secondPartStr)
        }
    }
}

extension String {
    /*
     "abcde"[0] --> "a"
     
     "abcde"[0...2] --> "abc"
     
     "abcde"[2..<4] --> "cd"
     */
    subscript(_ i: Int) -> String {
        let idx1 = index(startIndex, offsetBy: i)
        let idx2 = index(idx1, offsetBy: 1)
        return String(self[idx1..<idx2])
    }
    
    subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return String(self[start ..< end])
    }
    
    subscript (r: CountableClosedRange<Int>) -> String {
        let startIndex =  self.index(self.startIndex, offsetBy: r.lowerBound)
        let endIndex = self.index(startIndex, offsetBy: r.upperBound - r.lowerBound)
        return String(self[startIndex...endIndex])
    }
}
