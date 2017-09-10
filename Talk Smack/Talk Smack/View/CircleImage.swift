//
//  CircleImage.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 9/10/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        
        setUpView()
    }
    
   func setUpView () {
    
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        setUpView()
    }
}
