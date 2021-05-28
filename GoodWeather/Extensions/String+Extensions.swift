//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by cw-rikuma.wakabayashi on 2021/05/17.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
