//
//  RecursionPermutationsAnsInList.swift
//  Playground
//
//  Created by Admin on 2023-04-07.
//

import Foundation

struct RecursionPermutationsAnsInList {
    func generateAllPermutations(_ str: String, _ ans: String = "") -> [String] {
        if str.isEmpty {
            return [ans]
        }
        
        var result: [String] = []
        for i in 0...ans.count {
            let firstPartStr = ans[0..<i]
            let char = String(str.first!)
            let secondPartStr = ans[i..<ans.count]
            result.append(contentsOf: generateAllPermutations(String(str.dropFirst()), firstPartStr + char + secondPartStr))
        }
        return result
    }
}
