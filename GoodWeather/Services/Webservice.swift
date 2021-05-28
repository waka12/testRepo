//
//  Webservice.swift
//  GoodWeather
//
//  Created by cw-rikuma.wakabayashi on 2021/05/17.
//

import Foundation


struct Resorce<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class Webservice {
    func load<T>(resorce: Resorce<T>, completion: @escaping (T?) -> ()) {
        
        URLSession.shared.dataTask(with: resorce.url) { data, response, error in
            
            print(data)
            
            if let data = data {
                DispatchQueue.main.async {
                    completion(resorce.parse(data))
                }
            } else {
                completion(nil)
            }
            
        }.resume()
        
    }
}
