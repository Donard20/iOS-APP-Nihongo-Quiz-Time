//
//  ContentView.swift
//  sQuiz Time
//
//  Created by DONARD on 6/7/22.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(
        questionText: "to buy",
        possibleAnswers: ["買う", "走る", "遊ぶ", "歩く" ],
        correctAnswerIndex: 0)
    
    // creating constant variable background color and accent color for border
    
    // @State to update the screen when variable changes
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    
    // add maincolor and contain it in zstack view
    var body: some View {
        
        // view implementation
        ZStack {
            // spread the color to the edges
            mainColor.ignoresSafeArea()
            //create vstack for to contain the rest of the views and add question
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                // update from hard-coded
                Text(question.questionText)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // use spacer to move up the text
                Spacer()
                
                //use hstack for creating buttons
                HStack {
                    
                    // iterate the array for possible answers
                    // ERROR: Non-constant range: argument must be an integer literal
                    
//                    solution: addd these after count [, id: \.self]
                    ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                            
                            // updating background color
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                            
                            }, label: {
                                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
