//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by cw-rikuma.wakabayashi on 2021/05/17.
//

import Foundation

class AddWeatherViewModel {
    
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void) {
        
        
        let weatherURL = Constants.Urls.urlForWeatherByCity(city: city)
        let weatherResource = Resorce<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        Webservice().load(resorce: weatherResource) { (result) in
            if let weatherResource = result {
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
    }
    
}
