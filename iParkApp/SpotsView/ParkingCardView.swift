//
//  ParkingCardView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import SwiftUI

struct ParkingCardView: View {
    let parkingPlace: ParkingItem // Represents a parking place
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(parkingPlace.name) // Displays the name of the parking place
                    .font(.system(size: 18, weight: .bold))
                
                Text(parkingPlace.address) // Displays the address of the parking place
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                
                HStack {
                    Image(systemName: "car.fill") // Car icon
                        .foregroundColor(.gray)
                    Text("\(parkingPlace.carLimit)") // Displays the car limit
                    
                    Image(systemName: "dollarsign.circle.fill") // Dollar sign icon
                        .foregroundColor(.gray)
                    Text("$\(String(format: "%0.2f", parkingPlace.fee))/h") // Displays the fee per hour
                }
            }
            
            Spacer()
            
            Image(parkingPlace.photoName) // Displays the photo of the parking place
                .resizable()
                .frame(width: 80, height: 80)
                .scaledToFit()
                .cornerRadius(15)
        }
        .padding()
        .frame(height: 150)
        .background(Color.white)
        .cornerRadius(40)
    }
}

/*
 let parkingPlace: ParkingItem: A property that holds the information for a parking place (e.g., name, address, car limit, fee, photo name).
 In the body property, we define the view's content:

 HStack: A horizontal stack that places its child views horizontally.
 VStack: A vertical stack within the HStack that places its child views vertically with spacing between them.
 Text: Displays the name of the parking place as bold text and the address as regular text.
 HStack: A horizontal stack that displays the car icon, the car limit, the dollar sign icon, and the fee per hour.
 Image: Displays the photo of the parking place as an image. The image is resizable, has a fixed width and height of 80x80 pixels, and is scaled to fit the frame. It has a corner radius of 15.
 The view modifiers (padding, frame, background, cornerRadius) are used to adjust the layout and appearance of the view.
 This view is used within the ContentView to display the details of the selected parking place or the first spot in the list.
 */
