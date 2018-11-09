//
//  DroppablePin.swift
//  PixelCity
//
//  Created by Leon Liang on 13/02/2018.
//  Copyright © 2018 Leon Liang. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
