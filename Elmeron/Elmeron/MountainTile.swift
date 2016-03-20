//
//  MountainTile.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-19.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class MountainTile: ResourceTile {
    
    override var color : UIColor {
        get {
            return UIColor(
                red: CGFloat(128/255.0),
                green: CGFloat(128/255.0),
                blue: CGFloat(128/255.0),
                alpha: CGFloat(1.0)
            )
        }
    }
    
}