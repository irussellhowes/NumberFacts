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
                .onChange(of: textFieldData, { oldValue, newValue in
                    textFieldData = String(newValue.prefix(5))
                })
                .keyboardType(UIKeyboardType.numberPad)
                .padding(.horizontal)
                .onChange(of: textFieldData) { oldValue, newValue in
                    if let number = Int(newValue), newValue != oldValue {
                        numberComputations = NumberComputations(number: number)
                    }
                }
            Text("Parity: \(numberComputations.parity)")
            Text("Divisibility: \(numberComputations.divisibility)")
            Text("Square: \(numberComputations.square)")
            Text("Cube: \(numberComputations.cube)")
            
            Button(action: {}) {
                Text("Save")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(Color.pink)
                    .padding(.vertical)
                    .font(.title2)
            }
            
        }
        .font(.headline)
        Spacer()
    }
}


#Preview {
    FactsPageView()
}
