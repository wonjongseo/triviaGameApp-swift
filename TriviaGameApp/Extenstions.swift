
//
//  Extenstion.swift
//  TriviaGameApp
//
//  Created by Jongseo Won on 5/27/25.
//

import Foundation
import  SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(.accentColor)
    }
}
