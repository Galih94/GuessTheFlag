//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(stops: [
            .init(color: .yellow, location: 0.4),
            .init(color: .blue, location: 0.6),],
                       startPoint: .top,
                       endPoint: .bottom)
    }
}

#Preview {
    ContentView()
}
