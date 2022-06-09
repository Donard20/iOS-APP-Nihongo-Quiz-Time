//
//  ContentView.swift
//  sQuiz Time
//
//  Created by DONARD on 6/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        Button Views
//        Button (action:{
//            // some action here
//        }, label: {
//            // some views here
//
//        })
        
//        creating vstack with button
        VStack  {
            Text("Welcome to sQuiz Time")
                .font(.title)
                .padding()
            Button (action: {
                print("Clicked")
            }, label: {
                Text("Click me")
            })
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
        }
        
//        change the appearance of view using Colors
        ZStack {
            Color.blue
            Text("I'm blue")
                .font(.title)
                .foregroundColor(Color.white)
                
        }
        
//        spacer view
        // use Vstack to push all the way to botttom
        // use HStack to push in center right corner
        HStack {
            Spacer()
            // use .frame to align
                .frame(width: 100)
            Text("I'm blue")
                .font(.title)
                .foregroundColor(Color.blue)
                
        }

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
