//
//  ContentView.swift
//  TriviaGameApp
//
//  Created by Jongseo Won on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Trivia Game")
                        .lilacTitle()
                    
                    
                    Text("Are you ready to test out your trivia skills")
                        .foregroundColor(.accentColor)
                    
                }
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Let's go!")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red:0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        }
        
    }
}

#Preview {
    ContentView()
}
