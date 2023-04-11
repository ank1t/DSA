//
//  PermutationsCount.swift
//  Playground
//
//  Created by Admin on 2023-04-07.
//

import Foundation

struct PermutationsCount {
    func generateAllPermutations(_ str: String, _ ans: String = "") -> Int {
        if str.isEmpty {
            return 1
        }
        
        var count: Int = 0
        for i in 0...ans.count {
            let firstPartStr = ans[0..<i]
            let char = String(str.first!)
            let secondPartStr = ans[i..<ans.count]
            count += generateAllPermutations(String(str.dropFirst()), firstPartStr + char + secondPartStr)
        }
        return count
    }
}
