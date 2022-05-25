//
//  WeatherData.swift
//  Clima
//
//  Created by Rhiannon Stanford on 5/24/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let weather: [Weather]
    let main: Main
}



struct Weather: Decodable {
    let id: Double
    let main: String
    let description: String
    let icon: String
}



struct Main: Decodable {
    let temp: Double
    let pressure: Double
    let humidity: Double
    let temp_min: Double
    let temp_max: Double
}
