//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Galih Samudra on 29/12/23.
//

import SwiftUI

struct FlagImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(.capsule(style: .continuous))
            .shadow(color: .black, radius: 5)
    }
}

struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.blue)
            .font(.largeTitle.bold())
    }
}

extension View {
    func blueTitleStyle() -> some View {
        modifier(BlueTitle())
    }
}
extension View {
    func flagImageStyle() -> some View {
        modifier(FlagImage())
    }
}

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany",
                     "Ireland", "Italy", "Monaco",
                     "Nigeria", "Poland", "Spain",
                     "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreValue = 0
    @State private var currentQuestionCount = 0
    @State private var buttonTitle = ""
    private let MAX_QUESTION = 8
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.5), location: 0.7),
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.3), location: 0.7)
            ], center: .top, startRadius: 100, endRadius: 500)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("GUESS THE FLAG")
                    .blueTitleStyle()
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.headline.weight(.semibold))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.bold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .flagImageStyle()
                        }
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 50))
                Spacer()
                Spacer()
                Text("SCORE: \(scoreValue)")
                    .foregroundStyle(.white)
                    .font(.largeTitle.bold())
                Spacer()
            }
            .padding()
        }.alert(scoreTitle, isPresented: $showingScore) {
            Button(buttonTitle) {
                askQuestion()
            }
        } message: {
            Text("Currrent score is \(scoreValue)")
        }
    }
    
    private func flagTapped(_ number: Int) {
        currentQuestionCount += 1
        if currentQuestionCount == MAX_QUESTION {
            scoreTitle = "This is the last question, and You"
            buttonTitle = "Play Again"
        } else {
            scoreTitle = "This is the question no. \(currentQuestionCount), and You"
            buttonTitle = "Continue"
        }
        if correctAnswer == number {
            scoreTitle += "Are Correct"
            scoreValue += 1
        } else {
            scoreTitle += "Are Wrong, that is the flag of \(countries[number])"
        }
        showingScore = true
    }
    
    private func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        if currentQuestionCount == MAX_QUESTION {
            scoreValue = 0
            currentQuestionCount = 0
        }
    }
}

#Preview {
    ContentView()
}
