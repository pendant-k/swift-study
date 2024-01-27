//
//  Landmark.swift
//  swiftUI-official-example
//
//  Created by Donghan Kim on 1/20/24.
//

import CoreLocation
import Foundation
import SwiftUI

// Identifiable protocol -> 반드시 "id" 필드가 존재해야함
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

    // Code 이해가 필요함
    // Image struct 자체를 property로 가짐.
    // 해당 Image는 imageName으로부터 생성됨
    // json decode하는 부분에서 imageName 필드를 가져와서 이를 바탕으로 Image struct를 생성
    // Json decode 예시를 더 깊게 공부해봐야함 (자주 사용될 것 같음)
    private var imageName: String

    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        // Import from CoreLocation
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
