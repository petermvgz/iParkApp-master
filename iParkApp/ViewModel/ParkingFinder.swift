//
//  ParkingFinder.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import SwiftUI
import MapKit

class ParkingFinder: ObservableObject {
    @Published var spots = Data.spots
    @Published var selectedPlace: ParkingItem?
    @Published var showDetail = false
    
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: Data.spots[0].location.latitude,
            longitude: Data.spots[0].location.longitude),
        span: MKCoordinateSpan(latitudeDelta: 0.080, longitudeDelta: 0.050))
}


/*
 @Published var spots = Data.spots: Declares a published property for storing an array of parking spots. The Data.spots represents the initial set of parking spots.
 @Published var selectedPlace: ParkingItem?: Declares a published property for storing the currently selected parking spot. It is an optional ParkingItem.
 @Published var showDetail = false: Declares a published property to control the visibility of the parking detail view.
 @Published var region = MKCoordinateRegion(...): Declares a published property to store the initial region for the map view. It is initialized with a specific center coordinate and span using the first parking spot's location from the Data.spots array.
 */
