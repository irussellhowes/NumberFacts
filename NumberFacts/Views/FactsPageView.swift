//
//  ContentView.swift
//  NumberFacts
//
//  Created by Isla Russell-Howes on 2025-01-20.
//

import SwiftUI

struct FactsPageView: View {
    
    @State private var NumberComputations = numberComputations(number: 2)
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Number Facts!")
                .font(.largeTitle)
                .fontWeight(.bold)
            TextField("Ex. 2", text: $textFieldData)
                .keyboardType(UIKeyboardType.numberPad)
                .padding(.horizontal)
            Text("Parity: \(NumberComputations.parity)")
            Text("Divisibility: \(NumberComputations.divisibility)")
            Text("Square: \(NumberComputations.square)")
            Text("Cube: \(NumberComputations.cube)")
        }
        .font(.headline)
        Spacer()
    }
}

struct FactsPageView_Previews: PreviewProvider {
    static var previews: some View {
        FactsPageView()
    }
}

#Preview {
    FactsPageView()
}
