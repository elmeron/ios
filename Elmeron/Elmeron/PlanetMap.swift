//
//  File.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class PlanetMap: Map {
    override var backgroundColor: UIColor {
        get {
            return UIColor(
                red: CGFloat(0/255.0),
                green: CGFloat(87/255.0),
                blue: CGFloat(135/255.0),
                alpha: CGFloat(1.0)
            )
        }
    }
}