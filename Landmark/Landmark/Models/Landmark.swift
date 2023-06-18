//
//  Landmark.swift
//  Landmark
//
//  Created by 近藤元気 on 2023/06/15.
//

import Foundation
import CoreLocation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    //　カテゴリーのenum構造体
    enum Category: String, CaseIterable, Hashable, Codable{
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
//緯度、経度の構造体
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
