//
//  Constants.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 8/31/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

typealias CompletionHandler = ( Success: Bool) -> ()

//: URL Constants
let BASE_UR = "https://talksmack.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//: Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"


//: User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


