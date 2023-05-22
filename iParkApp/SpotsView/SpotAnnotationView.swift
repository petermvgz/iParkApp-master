//
//  SpotAnnotationView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import SwiftUI

struct SpotAnnotationView: View {
    let fee: String // Fee as a string
    var selected: Bool = false // Indicates if the spot is selected
    
    var body: some View {
        ZStack {
            Image(selected ? "parking_marker" : "cost_marker") // Displays different images based on the selected state
                .resizable()
                .frame(width: 44, height: 44)
            
            Text("$\(fee)") // Displays the fee as a text
                .foregroundColor(.white)
                .font(.system(size: 14))
                .opacity(selected ? 0.0 : 1.0) // Adjusts the opacity based on the selected state
        }
    }
}

/* let fee: String: A property that holds the fee for the parking spot as a string.
 var selected: Bool = false: A property that indicates whether the spot is selected or not, with a default value of false.
 In the body property, we define the view's content:

 ZStack: A container view that stacks its child views in layers.
 Image: Displays an image based on the selected state. If selected is true, it shows the "parking_marker" image; otherwise, it shows the "cost_marker" image. The images are resizable and have a frame size of 44x44 pixels.
 Text: Displays the fee as a text. It shows the fee prefixed with a "$" symbol. The text color is set to white, and the font size is set to 14. The text's opacity is adjusted based on the selected state: if selected is true, the text is invisible (opacity set to 0.0); otherwise, it is fully visible (opacity set to 1.0).
 This view is used within the ContentView to represent the annotation for each parking spot on the map.*/
