//
//  Constants.swift
//  PixelCity
//
//  Created by Leon Liang on 13/02/2018.
//  Copyright © 2018 Leon Liang. All rights reserved.
//

import Foundation

let apiKey = "48f363f6223c5860163f4ebeadc32450"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    let url =  "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}

