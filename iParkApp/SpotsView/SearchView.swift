//
//  SearchView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass") // Magnifying glass icon
                .font(.system(size: 22))
                .padding()
            
            Text("Parking address...") // Placeholder text for the search input
                .foregroundColor(.gray)
            
            Spacer() // Expands to fill the available space between the text and the chevron icon
            
            Image(systemName: "chevron.left") // Left chevron icon
                .padding()
        }
    }
}

/* HStack: A horizontal stack that places its child views horizontally.
 In the body property, we define the view's content:

 Image(systemName: "magnifyingglass"): Displays the magnifying glass icon from the SF Symbols system font. The font size is set to 22, and the icon is padded with some spacing.
 Text("Parking address..."): Displays the placeholder text "Parking address..." for the search input. The text color is set to gray.
 Spacer(): A spacer view that expands to fill the available space between the text and the chevron icon.
 Image(systemName: "chevron.left"): Displays the left chevron icon from the SF Symbols system font. The icon is padded with some spacing.
 This view represents a search input field with a magnifying glass icon, placeholder text, and a chevron icon.
 */
