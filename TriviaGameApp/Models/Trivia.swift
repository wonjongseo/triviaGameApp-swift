//
//  Trivia.swift
//  TriviaGameApp
//
//  Created by Jongseo Won on 5/27/25.
//

import Foundation

struct Trivia: Decodable {
    
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID {
            UUID()
        }
        let category: String
          let type: String
          let difficulty: String
          let question: String
          let correctAnswer: String
          let incorrectAnswers: [String]
        
        var formattedQuestion: AttributedString {
            do {
                return try AttributedString(markdown: question)
            } catch {
                print("Error setting formattedQuestion : \(error.localizedDescription)")
                return ""
            }
        }
        
        var answers: [Answer] {
            do {
                let correct =  [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                
                let incorrect = try incorrectAnswers.map { answer in // Q? let incorrect = try incorrect 여기서 왜 do나 뭐 안덮어도됌?
                    
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                
                let allAnswers = correct + incorrect
                
                return allAnswers.shuffled()
            } catch {
                print("Error setting answers: \(error.localizedDescription)")
                return []
            }
        }
    }
    
    /**
     {
           "type": "multiple",
           "difficulty": "medium",
           "category": "Mythology",
           "question": "Which greek god/goddess tossed a golden apple with the words &quot;for the fairest&quot; into the middle of the feast of the gods?",
           "correct_answer": "Eris",
           "incorrect_answers": [
             "Hades",
             "Ares",
             "Artemis"
           ]
         },
     */
}


