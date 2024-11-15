//
//  ModelPueblo.swift
//  PueblosJaen
//
//  Created by Pablo Peragón Garrido on 23/10/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct ModelPueblo: Hashable, Codable, Identifiable {
    var id: Int
    var nombre: String
    var comarca: String
    var provincia: String
    var descripcion: String
    var isVisit: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var imageEscudo: String
    var escudo: Image {
        Image(imageEscudo)
    }
    
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
