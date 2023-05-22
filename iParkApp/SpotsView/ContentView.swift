//
//  ContentView.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/3/23.
//

import SwiftUI
import MapKit

// ParkingFinder is an observed object that manages the parking spots and region
struct ContentView: View {
    // StateObject for managing the ParkingFinder instance
    @StateObject var parkingFinder = ParkingFinder()
    
    var body: some View {
        ZStack(alignment: .top) {
            // Background color
            Color.black.ignoresSafeArea()
            
            // Map view
            Map(
                coordinateRegion: $parkingFinder.region, // Binds the coordinate region to ParkingFinder's region
                annotationItems: parkingFinder.spots) { spot in
                MapAnnotation(
                    coordinate: spot.location, // Coordinate of the parking spot
                    anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                    Button(action: {
                        parkingFinder.selectedPlace = spot // Updates the selectedPlace in ParkingFinder
                    }, label: {
                        SpotAnnotationView(
                            fee: "\(Int(spot.fee))", // Fee as a string
                            selected: spot.id == parkingFinder.selectedPlace?.id) // Indicates if the spot is selected
                    })
                }
            }
            .cornerRadius(55)
            .edgesIgnoringSafeArea(.vertical)
            .offset(y: 0)
            
            VStack {
                // Top navigation view
                TopNavigationView()
                Spacer()
                
                // Parking card view showing the selected parking place or the first spot in the list
                ParkingCardView(parkingPlace: parkingFinder.selectedPlace ?? parkingFinder.spots[0])
                    .offset(y: -30)
                    .onTapGesture {
                        parkingFinder.showDetail = true // Sets the showDetail flag to true
                    }
                
                // Search view (commented out in the provided code)
                // SearchView()
            }
            .padding(.horizontal)
            
            // Parking detail view shown when the showDetail flag is true
            if parkingFinder.showDetail {
                ParkingDetailView(
                    parkingFinder: parkingFinder,
                    region: MKCoordinateRegion(
                        center: parkingFinder.selectedPlace?.location ?? parkingFinder.spots[0].location,
                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                    )
                )
            }
        }
        .onAppear {
            parkingFinder.selectedPlace = parkingFinder.spots[0] // Sets the selectedPlace to the first spot initially
        }
    }
}

// Color extension for custom colors
extension Color {
    static let darkColor = Color.init(red: 46/255, green: 45/255, blue: 45/255)
    static let lightColor = Color.init(red: 254/255, green: 254/255, blue: 254/255)
    static let yellowColor = Color.init(red: 245/255, green: 210/255, blue: 49/255)
    static let purpleColor = Color.init(red: 128/255, green: 0/255, blue: 140/255)
}

// UIScreen extension for screen-related properties
extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

