//
//  Collection.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 02/08/2022.
//

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
