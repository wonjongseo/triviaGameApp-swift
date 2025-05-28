//
//  PrimaryButton.swift
//  TriviaGameApp
//
//  Created by Jongseo Won on 5/27/25.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color.accentColor
      
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
