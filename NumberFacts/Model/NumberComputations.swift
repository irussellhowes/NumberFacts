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
    
    
    
    
}

