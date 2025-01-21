//
//  NumberView.swift
//  NumberFacts
//
//  Created by Isla Russell-Howes on 2025-01-20.
//

import Foundation

struct NumberComputations {
    //stored property
    var number: Int
    //Computed Properties
    var parity: String {
        let isDivisibleBy2 = number % 2 == 0
        if isDivisibleBy2 {
            return "true"
        } else {
            return "false"
        }
    }
    var divisibility: String {
        if number <= 1 {
            return "false"
        }
        for i in 2..<number {
            if number % i == 0 {
                return "false"
            }
        }
        return "true"
    }
    var square: Int {
        return number * number
    }
    var cube: Int {
        return number * number * number
    }
    var factors = { (number: Int) -> [Int] in
        var factors = [Int]()
        for i in 1...number {
            if number % i == 0 {
                factors.append(i)
            }
        }
        return factors
    }
}
