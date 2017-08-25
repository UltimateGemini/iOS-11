//
//  BorderButton.swift
//  BBall PickUps
//
//  Created by Noel Franceschi on 8/23/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
