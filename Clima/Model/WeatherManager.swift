//
//  WeatherManager.swift
//  Clima
//
//  Created by Rhiannon Stanford on 5/23/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=dd26b2902305a40e36871129f829396c&units=imperial"

    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print("urlString", urlString)
    }
}
