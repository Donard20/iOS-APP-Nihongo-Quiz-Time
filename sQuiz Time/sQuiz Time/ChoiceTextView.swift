//
//  ChoiceTextView.swift
//  sQuiz Time
//
//  Created by DONARD on 7/7/22.
//

// REFACTORING
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 42/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text") // Add the choiceText argument
    }
}
