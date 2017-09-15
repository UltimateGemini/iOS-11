//
//  Constants.swift
//  Pixel City
//
//  Created by Noel Franceschi on 9/15/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

//: Flickr API Key
let apiKey = "8a05beeaeecc3389e0c811298d00bfc0"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
