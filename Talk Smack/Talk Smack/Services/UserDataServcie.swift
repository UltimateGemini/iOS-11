//
//  UserDataServcie.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 9/10/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance  = UserDataService()
    
    //:Public getter that other classes read it but cant alter it.
    public private(set) var id = ""
    
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        
        self.avatarName = avatarName
    }
    
}
