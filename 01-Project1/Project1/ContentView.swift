//
//  ContentView.swift
//  Project1
//
//  Created by clarknt on 2019-10-08.
//  Copyright © 2019 clarknt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // State property wrapper allows mutating vars within the ContentView struct, including within computed properties like body
    
    // vars used by TextField must be String
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2

    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                // $ allows two-way binding of the var checkAmount, so that it gets updated with user input
                TextField("Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
            }
            
            Section {
                // checkAmount and not $checkAmount as there is no need to update the var here
                Text("$\(checkAmount)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}