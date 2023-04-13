//
//  RecursionDiceThrow.swift
//  Playground
//
//  Created by Admin on 2023-04-11.
//

import Foundation

struct RecursionDiceThrow {
    func diceThrow(_ target: Int, _ face: Int) -> [[Int]] {
        return helper([], target, face)
    }
    
    func helper(_ p: [Int], _ target: Int, _ face: Int) -> [[Int]] {
        if target == 0 {
            return [p]
        }
        
        var list: [[Int]] = []
        for i in 1...face where i <= target {
            var ans = p
            ans.append(i)
            list.append(contentsOf: helper(ans, target - i, face))
        }
        return list
    }
}
