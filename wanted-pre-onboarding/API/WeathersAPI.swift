//
//  WeathersAPI.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/14.
//

import Foundation

let apiKey = "aaa5700cbd82d1a09e738731002f97be"

class WeathersApi {
    func callAPI(cityName: String, completion: @escaping (MainWeather) -> Void) {
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=\(apiKey)&units=metric&lang=kr"
        guard let url = URL(string: urlString) else { return }
        
        let dataTask = session.dataTask(with: url) { data, response, error in
            let successRange = 200..<300
            guard error == nil, let statusCode = (response as? HTTPURLResponse)?.statusCode, successRange.contains(statusCode) else {
                return
            }
            guard let resultData = data else {
                return
            }
            
            let decoder = JSONDecoder()
            let decodedData = try! decoder.decode(MainWeather.self, from: resultData)
            DispatchQueue.main.async {
                completion(decodedData)
            }
            
        }
        dataTask.resume()
    }


    
    
}
