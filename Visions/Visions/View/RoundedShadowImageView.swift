//
//  RoundedShadowImageView.swift
//  Visions
//
//  Created by Noel Franceschi on 9/22/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class RoundedShadowImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.75
        self.layer.cornerRadius = 15
    }

}
