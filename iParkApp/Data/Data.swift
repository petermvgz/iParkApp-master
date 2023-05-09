//
//  Data.swift
//  iParkApp
//
//  Created by Peter Deyi on 5/4/23.
//

import Foundation

import MapKit

struct Data {
    static let spots = [
        ParkingItem(name: "Lot 2", address: "1600 Holloway Ave., San Francisco", photoName: "5", place: "Space B1", carLimit: 45, location: CLLocationCoordinate2D(latitude: 37.7210705, longitude: -122.4760580), fee: 5.0, hour: "0.0"),
        ParkingItem(name: "Lot 20", address: "796 State Dr., San Francisco", photoName: "3", place: "Space A6", carLimit: 15, location: CLLocationCoordinate2D(latitude: 37.7253418, longitude: -122.4809135), fee: 3.0, hour: "0.0"),
        ParkingItem(name: "ChargePoint Charging Station", address: "1600 Holloway Ave., San Francisco", photoName: "ev", place: "Space 4", carLimit: 8, location: CLLocationCoordinate2D(latitude: 37.7157048, longitude: -122.4734916), fee: 4.0, hour: "0.0"),
        ParkingItem(name: "400 Winston Drive Parking", address: "400 Winston Dr., San Francisco", photoName: "4", place: "Space C2", carLimit: 25, location: CLLocationCoordinate2D(latitude: 37.7281275, longitude: -122.4781072), fee: 3.0, hour: "0.0"),
        ParkingItem(name: "473 Eucalyptus Drive Parking", address: "1647 Powell St, San Francisco", photoName: "5", place: "SpaceA12", carLimit: 12, location: CLLocationCoordinate2D(latitude: 37.7309747, longitude: -122.4773240), fee: 2.0, hour: "0.0"),
        ParkingItem(name: "Lakeside Village - Public Parking", address: "300 19th Ave., San Francisco", photoName: "5", place: "Space A9", carLimit: 23, location: CLLocationCoordinate2D(latitude: 37.7320638, longitude: -122.4746312), fee: 1.0, hour: "0.0")
    ]
}
