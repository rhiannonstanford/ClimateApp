//
//  WeatherModel.swift
//  Clima
//
//  Created by Rhiannon Stanford on 5/31/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    // stored value property
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    // computed value property
    var conditionName: String {
        switch conditionId {
        case 200...232: // thunderstorms
            return "cloud.bolt"
        case 300...321: // drizzle
            return "cloud.drizzle"
        case 500...531: // rain
            return "cloud.rain"
        case 600...622: // snow
            return "cloud.snow"
        case 701: // mist
            return "cloud"
        case 711: // smoke
            return "aqi.high"
        case 721: // haze
            return "aqi.medium"
        case 731: // dust
            return "aqi.medium"
        case 741: // fog
            return "cloud.fog"
        case 751: // sand
            return "aqi.high"
        case 761: // dust
            return "aqi.medium"
        case 762: // ash
            return "aqi.high"
        case 771: // squall
            return "cloud.heavyrain"
        case 781: // tornado
            return "tornado"
        case 800: // clear
            return "sun.max"
        case 801: // clouds
            return "cloud"
        default:
            return "cloud"
        }
    }
    


        
} // end of weather struct
