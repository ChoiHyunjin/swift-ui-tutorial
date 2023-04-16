//
//  Landmark.swift
//  SwiftUITutorial
//
//  Created by Tophy on 2023/04/16.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    var city: String
    var category: String
    var isFeatured: Bool
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
    private var coordinates: Coordinates
    var locationCorrdinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}
