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
                Text("Tap me")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
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
