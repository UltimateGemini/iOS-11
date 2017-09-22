//
//  CameraVC.swift
//  Visions
//
//  Created by Noel Franceschi on 9/21/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class CameraVC: UIViewController {

    //: Outlets
    @IBOutlet weak var cameraView: UIView!
    @IBOutlet weak var captureImageView: RoundedShadowImageView!
    @IBOutlet weak var flashBtn: RoundedShadowBtn!
    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var confidenceLbl: UILabel!
    @IBOutlet weak var roundedLblView: roundedShadowView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

