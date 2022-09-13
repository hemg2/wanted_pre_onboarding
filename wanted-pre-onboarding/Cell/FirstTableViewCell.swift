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
        currentHumidityLabel.text = "\(model.humidity)"
        weatherNameLabel.text = model.weatherName
        currentTemperatureLabel.text = "\(model.temperature)"
        
        guard let icon = model.icon, let url = URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png") else { return }
        let data = try! Data(contentsOf: url)
        weatherIconImage.image = UIImage(data: data)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
