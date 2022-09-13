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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
