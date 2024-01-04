//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany",
                     "Ireland", "Italy", "Monaco",
                     "Nigeria", "Poland", "Spain",
                     "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreValue = 0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.5), location: 0.7),
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.3), location: 0.7)
            ], center: .top, startRadius: 100, endRadius: 500)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.headline.weight(.semibold))
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.bold))
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .clipShape(.capsule(style: .continuous))
                            .shadow(color: .black, radius: 5)
                    }
                    
                }
            }
        }.alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue") {
                askQuestion()
            }
        } message: {
            Text("Currrent score is \(scoreValue)")
        }

    }
    
    private func flagTapped(_ number: Int) {
        if correctAnswer == number {
            scoreTitle = "You Are Correct"
            scoreValue += 1
        } else {
            scoreTitle = "Wrong Try Again"
        }
        showingScore = true
    }
    
    private func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
