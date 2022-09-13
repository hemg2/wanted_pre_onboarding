//
//  ModelData.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/13.
//

import Foundation


struct CityInfo {
    let name: String
    let icon: String
    let temperature: Double
    let humidity: Double
    let weatherName: String
}

struct DetailWeather {
    let weatherIcon: String
    let weatherName: String
    let citiName: String
    let currentTemperature: String
    let minTemperature: Double
    let maxTemperature: Double
    let sensibleTemperature: String
    let currentHumidity: String
    let pressure: String
    let wind: Double
}
