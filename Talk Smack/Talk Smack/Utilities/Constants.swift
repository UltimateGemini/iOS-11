//
//  Constants.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 8/31/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

typealias CompletionHandler = ( _ Success: Bool) -> ()

//: URL Constants
let BASE_URL = "https://talksmack.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

//: Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"


//: User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//: Headers
let HEADER = [
    "Content-Type" : "application/json; charset=utf-8"
]
