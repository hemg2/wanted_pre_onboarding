//
//  ModelData.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/13.
//

import Foundation


struct CityInfo {
    let name: String
    let icon: String?
    let temperature: Double
    let humidity: Double
    let weatherName: String?
}

struct DetailWeather {
    let weatherIcon: String?
    let weatherName: String?
    let citiName: String
    let currentTemperature: String
    let minTemperature: String
    let maxTemperature: String
    let sensibleTemperature: String
    let currentHumidity: String
    let pressure: String
    let wind: Double
}

    
struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Main: Codable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Double
    let sea_level: Int?
    let grnd_level: Int?
}
struct Wind: Codable {
    let speed: Double
    let deg: Int
    let gust: Double?
}

struct MainWeather: Codable{
    let base: String
    let main : Main
    let weather : [Weather]
    let wind : Wind
    let name: String
}
