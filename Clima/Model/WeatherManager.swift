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
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        // 1. Create a URL
        if let url = URL(string: urlString) {
              
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            // 3. Give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8) // converts data into a string
                    print("dataString", dataString)
                }
            }
            
            // 4. Start the task.  (Call .resume() to start the task
            task.resume()
        }
    }
    
    
}
