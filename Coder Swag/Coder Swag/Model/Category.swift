//
//  Category.swift
//  Coder Swag
//
//  Created by Noel Franceschi on 8/29/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
