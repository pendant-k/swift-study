//
//  WeatherManager.swift
//  Clima
//
//  Created by Donghan Kim on 1/28/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//
import Foundation

let api_key = "64489df3908f930142d910384a877a56"

// Perform Networking
// Decode JSON to data class
struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=\(api_key)&units=metric"

    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }

    func performRequest(urlString: String) {
        // url => URL (Not URL?)
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            // completionHandler
            // using closure here
            let task = session.dataTask(with: url) { data, _, error in

                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    // self 키워드를 통해서 해당 struct 내의 함수를 실행한다고 알려주어야함 (In Closure)
                    // WeatherManager struct의 parseJSON 메서드임을 명시
                    self.parseJSON(weatherData: safeData)
                }
            }
            // URLSession에 Task를 생성하고, 직접 실행해야함
            task.resume()
        }
    }

    func parseJSON(weatherData: Data) {
        // Create Decoder instance
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.main.temp)
            print(decodedData.weather[0].description)
        } catch {
            print(error)
        }
    }
}
