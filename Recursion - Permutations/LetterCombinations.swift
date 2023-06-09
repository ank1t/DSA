//
//  LetterCombinations.swift
//  Playground
//
//  Created by Admin on 2023-04-07.
//

import Foundation

struct LetterCombinationsRecursive {
    let map: [Character: String] = [
        "2" : "abc",
        "3" : "def",
        "4" : "ghi",
        "5" : "jkl",
        "6" : "mno",
        "7" : "pqrs",
        "8" : "tuv",
        "9" : "wxyz"
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else {
            return []
        }
        return helper("", digits)
    }
    
    func helper(_ p: String, _ up: String) -> [String] {
        if up.isEmpty {
            return [p]
        }
        var ans: [String] = []
        let digitStr: String = map[up.first!, default: ""]
        let upStrUpdated: String = String(up.dropFirst())
        for char in digitStr {
            ans.append(contentsOf: helper(p + String(char), upStrUpdated))
        }
        return ans
    }
}

struct LetterCombinationsIterative {
    let map: [Character: String] = [
        "2" : "abc",
        "3" : "def",
        "4" : "ghi",
        "5" : "jkl",
        "6" : "mno",
        "7" : "pqrs",
        "8" : "tuv",
        "9" : "wxyz"]
    
    func letterCombinations(_ digits: String) -> [String] {
        var ans: [String] = []
        var digitsIndex: Int = 0
        while digitsIndex < digits.count {
            let digitChars: String = map[digits[digitsIndex], default: ""]
            var temp: [String] = []
            for char in digitChars {
                if ans.isEmpty {
                    temp.append(String(char))
                } else {
                    for str in ans {
                        temp.append(str + String(char))
                    }
                }
            }
            ans = temp
            digitsIndex += 1
        }
        return ans
    }
}
