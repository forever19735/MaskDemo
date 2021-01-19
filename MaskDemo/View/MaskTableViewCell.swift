//
//  MaskTableViewCell.swift
//  MaskDemo
//
//  Created by 季紅 on 2020/6/22.
//  Copyright © 2020 johnlin. All rights reserved.
//

import UIKit

struct MaskObject {
    var country: String
    var count: Int
}

class MaskTableViewCell: UITableViewCell {
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupWithViewData(viewData: MaskObject) {
        countryLabel.text = viewData.country
        countLabel.text = String(viewData.count)
    }
}
