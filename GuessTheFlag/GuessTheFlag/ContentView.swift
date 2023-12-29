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
            Color(red: 1, green: 0.8, blue: 0)
            VStack(spacing: 0) {
                Color.red
                    .frame(minWidth: 100, maxWidth: .infinity, maxHeight: 100)
                Color.white
                    .frame(minWidth: 100, maxWidth: .infinity, maxHeight: 100)
            }
            Text("Indonesia")
                .foregroundStyle(.secondary)
                .padding(20)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
