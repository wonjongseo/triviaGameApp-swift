//
//  Answer.swift
//  TriviaGameApp
//
//  Created by Jongseo Won on 5/27/25.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool 
}
