//
//  ItemDetailView.swift
//  Ligaya App Store
//
//  Created by DONARD on 7/20/22.
//

import SwiftUI

struct ItemDetailView: View {
    
    let itemName: String
    
    // this will create a random number representing items
    @State var quantityRemaining = Int.random(in: 1...10)
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()
            
            // center image
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            
            // it will display the remaining item
            Text("Quantity Remaining: \(quantityRemaining)")
            Spacer() // center
            
            // Button
            Button {
                // create conditional to decrease the item when button is use
                if quantityRemaining > 0 {
                    quantityRemaining -= 1
                }
            } label: {
                Text("Add one to your cart")
            }
            Spacer()
        }
        
        // .background() is running behind the itemdetailview after condition is met
        .background(
            
            // the navigation link is not active until the quantity is 0
            
            // isactive will check item, if the quantity is 0 it will move to other view which is emptyview() and display the text in destination
            NavigationLink (destination: Text("You bought all the \(itemName)"),
                            isActive: .constant(quantityRemaining == 0),
                            label: { EmptyView()})
            
        )
        Spacer()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}
