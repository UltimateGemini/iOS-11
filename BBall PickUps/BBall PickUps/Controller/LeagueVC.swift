//
//  LeagueVC.swift
//  BBall PickUps
//
//  Created by Noel Franceschi on 8/25/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCodeTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredleague = leagueType
    nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
