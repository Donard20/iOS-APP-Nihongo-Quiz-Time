//
//  ContentView.swift
//  sQuiz Time
//
//  Created by DONARD on 6/7/22.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(
        questionText: "What is 'buy' in japanese?",
        possibleAnswers: ["買う", "走る", "遊ぶ", "歩く" ],
        correctAswerIndex: 1)
    
    // creating constant variable background color and accent color for border
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
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
                Text(question.questionText) // update from hard-coded
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                // use spacer to move up the text
                Spacer()
                //use hstack for creating buttons
                HStack {
                    
                    // update the hard-coded into instances
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])

                    })
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 4")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
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
