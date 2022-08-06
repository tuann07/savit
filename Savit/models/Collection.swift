/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Nguyen Anh Tuan
 ID: 3817907
 Created  date: 02/08/2022
 Last modified: 06/08/2022
 Acknowledgement:
*/

import Foundation
import SwiftUI
import CoreLocation

// MARK: - Collection
struct Collection: Identifiable, Codable {
    var id: Int
    var title, period, imageName: String
    var events: [Event]
    
    var image: Image {
        Image(imageName)
    }
}

// MARK: - Timeline
struct Event: Identifiable, Codable {
    var id: Int
    var title, period, note: String
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

// MARK: - Coordinates
struct Coordinates: Codable {
    var latitude, longitude: Double
}
