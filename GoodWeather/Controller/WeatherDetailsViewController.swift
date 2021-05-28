//
//  WeatherDetailsViewController.swift
//  GoodWeather
//
//  Created by cw-rikuma.wakabayashi on 2021/05/19.
//

import Foundation
import UIKit

class WeatherDetailsViewController: UIViewController {

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    
    var weatherViewModel: WeatherViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cityNameLabel.text = self.weatherViewModel?.city
        self.currentTemperatureLabel.text = self.weatherViewModel?.temperature.formatAsDegree()
        self.maxTempLabel.text = self.weatherViewModel?.temperatureMax.formatAsDegree()
        self.minTempLabel.text = self.weatherViewModel?.temperatureMin.formatAsDegree()
    }
}
