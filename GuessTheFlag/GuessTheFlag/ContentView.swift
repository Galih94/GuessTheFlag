//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.red
                .frame(minWidth: 100, maxWidth: .infinity, maxHeight: 200)
            Text("Your content")
        }
    }
}

#Preview {
    ContentView()
}
