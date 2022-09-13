//
//  DetailViewController.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/13.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var weatherIconImage: UIImageView!
    @IBOutlet weak var weatherNameLabel: UILabel!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var minTemperatureLabel: UILabel!
    @IBOutlet weak var maxTemperatureLabel: UILabel!
    @IBOutlet weak var sensibleTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    
    var detailWeather: DetailWeather?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let detailWeather = detailWeather {
        weatherNameLabel.text = detailWeather.weatherName
            guard let icon = detailWeather.weatherIcon, let url = URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png") else { return }
            let data = try! Data(contentsOf: url)
            weatherIconImage.image = UIImage(data: data)
        cityNameLabel.text = detailWeather.citiName
            currentHumidityLabel.text = detailWeather.currentHumidity
            minTemperatureLabel.text = "\(detailWeather.minTemperature)"
            maxTemperatureLabel.text = "\(detailWeather.maxTemperature)"
            sensibleTemperatureLabel.text = detailWeather.sensibleTemperature
            currentHumidityLabel.text = detailWeather.currentHumidity
            currentTemperatureLabel.text = detailWeather.currentTemperature
            pressureLabel.text = detailWeather.pressure
            windLabel.text = "\(detailWeather.wind)"
        }
    }
}
