//
//  WeatherData.swift
//  Clima
//
//  Created by Donghan Kim on 1/28/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

// Decodable -> JSON Decode
struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}
