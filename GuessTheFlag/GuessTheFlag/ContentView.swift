//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany",
                     "Ireland", "Italy", "Monaco",
                     "Nigeria", "Poland", "Spain",
                     "UK", "Ukraine", "US"].shuffled()
    var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
                .blur(radius: 10)
            VStack(spacing: 20) {
                
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                    }
                    
                }
            }
        }

    }
    
    private func flagTapped(_ number: Int) {
        if correctAnswer == number {
            scoreTitle = "You Are Correct"
        } else {
            scoreTitle = "Wrong Try Again"
        }
        showingScore = true
    }
}

#Preview {
    ContentView()
}
