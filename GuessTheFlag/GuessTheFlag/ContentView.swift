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
            Button {
                print("Button tapped")
            } label: {
                Image(systemName: "pencil.circle")
                    .foregroundStyle(.red)
                    .font(.largeTitle)
            }
            
        }
        
    }
    
    private func executeButton() {
        print("Deleting...")
    }
}

#Preview {
    ContentView()
}
