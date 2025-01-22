//
//  ContentView.swift
//  NumberFacts
//
//  Created by Isla Russell-Howes on 2025-01-20.
//

import SwiftUI

struct FactsPageView: View {
    
    @State private var numberComputations = NumberComputations(number: 2)
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Number Facts!")
                .font(.largeTitle)
                .fontWeight(.bold)
            TextField("Ex. 2", text: $textFieldData)
                .keyboardType(UIKeyboardType.numberPad)
                .padding(.horizontal)
            Text("Parity: \(numberComputations.parity)")
            Text("Divisibility: \(numberComputations.divisibility)")
            Text("Square: \(numberComputations.square)")
            Text("Cube: \(numberComputations.cube)")
        }
        .font(.headline)
        Spacer()
    }
}


#Preview {
    FactsPageView()
}
