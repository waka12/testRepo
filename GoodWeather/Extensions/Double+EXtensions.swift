//
//  Double+EXtensions.swift
//  GoodWeather
//
//  Created by cw-rikuma.wakabayashi on 2021/05/18.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°",self)
    }
    
}
