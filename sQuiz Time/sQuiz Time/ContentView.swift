//
//  ContentView.swift
//  sQuiz Time
//
//  Created by DONARD on 6/7/22.
//

import SwiftUI

struct ContentView: View {
    
    // creating constant variable background color and accent color for border
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    let accentColor = Color(red: 42/255, green: 105/255, blue: 240/255)
    
    // add maincolor and contain it in zstack view
    var body: some View {
        ZStack {
            // spread the color to the edges
            mainColor.ignoresSafeArea()
            //create vstack for to contain the rest of the views and add question
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Who created the Nihongo Quiz Time App?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                // use spacer to move up the text
                Spacer()
                //use hstack for creating buttons
                HStack {
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        Text("Jozelle")
                            .font(.body)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        Text("Marco")
                            .font(.body)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        Text("Donard")
                            .font(.body)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        Text("Helen")
                            .font(.body)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .border(accentColor, width: 4)
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
