//
//  CityWeatherViewController.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/13.
//

import UIKit

class CityWeatherViewController: UIViewController {

    @IBOutlet weak var listTabelView: UITableView!
    
    var cityWeathers: [CityInfo] = [CityInfo.init(name: "부산", icon: "04d", temperature: 21.1, humidity: 22.2, weatherName: "윤아"), CityInfo.init(name: "서울", icon: "04d", temperature: 31.1, humidity: 32.1, weatherName: "태연"), CityInfo.init(name: "대구", icon: "04d", temperature: 41.1, humidity: 42.1, weatherName: "티파니"), CityInfo.init(name: "대전", icon: "04d", temperature: 51.1, humidity: 52.1, weatherName: "수영")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        detailViewController.detailWeather = DetailWeather.init(weatherIcon: "흐림", weatherName: "회기", citiName: "정자", currentTemperature: "11", minTemperature: 11.1, maxTemperature: 11.2, sensibleTemperature: "11.3", currentHumidity: "11.4", pressure: "11.5", wind: 11.6)
        
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
     
}
