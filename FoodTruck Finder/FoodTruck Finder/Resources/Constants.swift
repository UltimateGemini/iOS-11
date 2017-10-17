//
//  Constants.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

//: Callbacks
typealias callback = (_ success: Bool) -> ()

//: Base URL
let BASE_API_URL = "https://finalwebtest.com/api/v1"

//: GET all food trucks
let GET_ALL_FT_URL = "\(BASE_API_URL)/foodtruck"

//: GET all reviews for a specific food truck
let GET_ALL_FT_REVIEWS = "\(BASE_API_URL)/foodtruck/reviews"

//: POST - Add new food truck
let POST_ADD_NEW_TRUCK = "\(BASE_API_URL)/foodtruck/add"

//: POST - Add review for specific food truck
let POST_ADD_NEW_REVIEW = "\(BASE_API_URL)/foodtruck/reviews/add"

//: Boolean auth UserDefaults keys
let DEFAULTS_REGISTERED = "isRegistered"
let DEFAULTS_AUTHENTICATED = "isAuthenticated"

//: Auth Email
let DEFAULTS_EMAIL = "email"

//: Auth Token
let DEFAULTS_TOKEN = "authToken"

//: REGISTER URL
let POST_REGISTER_ACCT = "\(BASE_API_URL)/account/register"

let POST_LOGIN_ACCT = "\(BASE_API_URL)/account/login"
