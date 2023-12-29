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
            Color.secondary
            VStack(spacing: 0) {
                Color.red
                    .frame(minWidth: 100, maxWidth: .infinity, maxHeight: 100)
                Color.white
                    .frame(minWidth: 100, maxWidth: .infinity, maxHeight: 100)
            }
            Text("Indonesia")
                .foregroundStyle(.green)
                .font(.largeTitle)
        }
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
