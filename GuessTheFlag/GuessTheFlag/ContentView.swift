//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "pencil")
            .foregroundStyle(.green)
            .font(.largeTitle)
        
    }
    
    private func executeButton() {
        print("Deleting...")
    }
}

#Preview {
    ContentView()
}
