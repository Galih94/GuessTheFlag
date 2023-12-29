//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Button 1") { print("Button 1 tapped") }
                .buttonStyle(.bordered)
            Button("Button 2") { print("Button 2 tapped") }
                .buttonStyle(.plain)
            Button("Button 3") { print("Button 3 tapped") }
                .buttonStyle(.borderless)
            Button("Button 4") { print("Button 4 tapped") }
                .buttonStyle(.borderedProminent)
            Button("Button 5") { print("Button 5 tapped") }
                .buttonStyle(.automatic)
        }
        
    }
    
    private func executeButton() {
        print("Deleting...")
    }
}

#Preview {
    ContentView()
}
