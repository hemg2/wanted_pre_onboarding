//
//  FirstTableViewCell.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/13.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    @IBOutlet weak var citiNameLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var weatherNameLabel: UILabel!
    @IBOutlet weak var weatherIconImage: UIImageView!
    
    func setModel(model: CityInfo) {
        citiNameLabel.text = model.name
        currentHumidityLabel.text = "습 도:\(model.humidity)%"
        weatherNameLabel.text = (model.weatherName)
        currentTemperatureLabel.text = "현재 기온:\(model.temperature.temperatureString)"
        
        guard let icon = model.icon, let url = URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png") else { return }
        weatherIconImage.image = UIImage(data: ImageDownload.shared.download(url: url))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
