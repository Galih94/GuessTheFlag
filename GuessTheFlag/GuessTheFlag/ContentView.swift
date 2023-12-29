//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        Button("Show Alert") {
            showAlert = true
        }
        .alert("Important message", isPresented: $showAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        }
        
    }
    
    private func executeButton() {
        print("Deleting...")
    }
}

#Preview {
    ContentView()
}
