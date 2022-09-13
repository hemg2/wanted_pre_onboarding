//
//  CityWeatherViewController.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/13.
//

import UIKit

class CityWeatherViewController: UIViewController {

    @IBOutlet weak var listTabelView: UITableView!
    
    var cityWeathers: [CityInfo] = []
    var mainDetail: [MainWeather] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let cityNames = ["busan", "seoul", "daegu", "chuncheon", "cheongju", "cheonan", "jeju", "jeonju",
                         "iksan", "ulsan", "sunchun", "suigen", "sogcho", "suisan", "moppo", "deajeon", "kunsan", "Gumi", "gongju", "gwangju"]
        for cityName in cityNames {
            WeathersApi().callAPI(cityName: cityName) { data in
                self.cityWeathers.append(CityInfo(name: cityName, icon: data.weather.first?.icon, temperature: data.main.temp, humidity: data.main.humidity, weatherName: data.weather.first?.description))
                self.mainDetail.append(data)
                self.listTabelView.reloadData()
            }
        }
        
    }
    
    
}


extension CityWeatherViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityWeathers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cityCell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as? FirstTableViewCell else {
            return UITableViewCell()
        }
        let cityInfo = cityWeathers[indexPath.row]
        cityCell.setModel(model: cityInfo)
        

        return cityCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
      
        
    

       
            
            let respone = mainDetail[indexPath.row]
        detailViewController.detailWeather = DetailWeather.init(weatherIcon: respone.weather.first?.icon, weatherName: respone.weather.first?.description, citiName:respone.name, currentTemperature: "\(respone.main.temp.temperatureString)", minTemperature: respone.main.temp_min.temperatureString, maxTemperature: respone.main.temp_max.temperatureString, sensibleTemperature: "\(respone.main.feels_like.temperatureString)", currentHumidity: "\(respone.main.humidity)", pressure: "\(respone.main.pressure)", wind: respone.wind.speed)
       
        self.navigationController?.pushViewController(detailViewController, animated: true)

    }
     
}




fileprivate let temperatureFormatter: MeasurementFormatter = {
    let f = MeasurementFormatter()
    f.locale = Locale(identifier: "ko_kr")
    f.numberFormatter.maximumFractionDigits = 1
    f.unitOptions = .temperatureWithoutUnit
    return f
}()


extension Double {
    var temperatureString: String {
        let temp = Measurement<UnitTemperature>(value: self, unit: .celsius)
        return temperatureFormatter.string(from: temp)
    }
}
