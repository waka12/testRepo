//
//  WeatherResponces.swift
//  GoodWeather
//
//  Created by cw-rikuma.wakabayashi on 2021/05/17.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let temp_min: Double
    let temp_max: Double
    let humidity: Double
    
}

//class Dynamic<T>: Decodable where T: Decodable {
//
//    typealias Listener = (T) -> ()
//    var listener: Listener?
//
//    var value: T {
//        didSet {
//            listener?(value)
//        }
//    }
//
//    func bind(listener: @escaping Listener) {
//        self.listener = listener
//        self.listener?(self.value)
//    }
//
//    init(_ value: T) {
//        self.value = value
//    }
//
//}
