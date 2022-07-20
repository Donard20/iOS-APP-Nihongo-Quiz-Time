//
//  ContentView.swift
//  Ligaya App Store
//
//  Created by DONARD on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // navigation view acts as container for navigable views and container
    NavigationView {
        VStack {
               
            Text("Items in Stock")
                .font(.title)
                .padding()
 
            
            Image(systemName: "photo")
                .font(.system(size: 200))
 
            
            // creating items and navigationlink to link the detail view
            
            // shrimp chips
            NavigationLink( destination: ItemDetailView(itemName: "Shrimp Chips"),
                label: {
                    Text("Shrimp Chips")
            })

            // peanuts
            NavigationLink( destination: ItemDetailView(itemName: "Peanuts"),
                label: {
                    Text("Peanuts")
            })
            
            // candies
            NavigationLink( destination: ItemDetailView(itemName: "Snow Bear Candy"),
                label: {
                    Text("Snow Bear Candy")
            })
            
            //
            NavigationLink( destination: ItemDetailView(itemName: "Shampoo"),
                label: {
                    Text("Shampoo")
            })
            
            Spacer()
        }
        
        // display the app store name at the top
        .navigationTitle(Text("Donard's Online Sari-Sari Store"))
            
        // this will display the appearance
        .navigationBarTitleDisplayMode(.inline)
        
        // i just added this to make my title bigger
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Donard's Online Sari-Sari Store")
                        .font(.system(size: 22))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
