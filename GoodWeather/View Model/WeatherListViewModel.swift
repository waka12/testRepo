//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by cw-rikuma.wakabayashi on 2021/05/18.
//

import Foundation


class WeatherListViewModel {
    
    private(set) var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
    
    private func toCelcius() {
        
        weatherViewModels = weatherViewModels.map { vm in
            let weatherViewModel = vm
            weatherViewModel.temperature = (weatherViewModel.temperature - 32) * 5/9
            weatherViewModel.temperatureMax = (weatherViewModel.temperatureMax - 32) * 5/9
            weatherViewModel.temperatureMin = (weatherViewModel.temperatureMin - 32) * 5/9
            return weatherViewModel
        }
        
    }
    
    private func toFehrenheit() {
        weatherViewModels = weatherViewModels.map { vm in
            let weatherViewModel = vm
            weatherViewModel.temperature = (weatherViewModel.temperature * 9/5) + 32
            weatherViewModel.temperatureMax = (weatherViewModel.temperatureMax * 9/5) + 32
            weatherViewModel.temperatureMin = (weatherViewModel.temperatureMin * 9/5) + 32
            return weatherViewModel
        }
    }
    
    func updatedUnit(to unit:Unit) {
        switch unit {
        case .celsius:
            toCelcius()
        case .fahrenheit:
            toFehrenheit()
        }
    }
    
}

class WeatherViewModel {
    
    let weather: WeatherResponse
    var temperature: Double
    var temperatureMin: Double
    var temperatureMax: Double
    
    
    init(weather: WeatherResponse) {
        self.weather = weather
        temperature = weather.main.temp
        temperatureMin = weather.main.temp_min
        temperatureMax = weather.main.temp_max
    }
    
    var city: String {
        return weather.name
    }
}
