//
//  TopNavigationView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import SwiftUI

struct TopNavigationView: View {
    var body: some View {
        HStack {
            VStack(spacing: 8) {
                // Empty Image views (commented out in the provided code)
            }
            // .font(.system(size: 26))
            // .frame(width: 66, height: 66)
            // .background(Color.white)
            // .cornerRadius(25)
            
            Spacer()
            
            HStack {
                Image("car") // Displays an image of a car
                    
                VStack(alignment: .leading, spacing: 2) {
                    Text("My car") // Displays the text "My car" as a title
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    Text("Honda") // Displays the text "Honda" as the car's brand
                        .font(.system(size: 17))
                }
            }
            .frame(width: 145, height: 66)
            .background(Color.white)
            .cornerRadius(25)
        }
    }
}

/* In the body property, we define the view's content:
 
 HStack: A horizontal stack that places its child views horizontally.
 VStack: A vertical stack within the HStack that places its child views vertically with spacing between them. In the provided code, the VStack contains two empty Image views, which are commented out.
 Spacer(): A spacer view that expands to fill the available space between the VStack and the next HStack.
 The second HStack contains an Image view displaying an image of a car and a VStack containing two Text views.
 Image("car"): Displays an image of a car.
 Text("My car"): Displays the text "My car" as a title with a font size of 14 and a gray color.
 Text("Honda"): Displays the text "Honda" as the car's brand with a font size of 17.
 The view modifiers (frame, background, cornerRadius) are used to adjust the layout and appearance of the view.
 This view represents the top navigation section of the app, including an image of a car and the car's information.
 */

