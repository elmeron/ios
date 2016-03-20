//
//  SeaTile.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class LakeTile: ResourceTile {
    
    override var color : UIColor {
        get {
            return UIColor(
                red: CGFloat(63/255.0),
                green: CGFloat(169/255.0),
                blue: CGFloat(245/255.0),
                alpha: CGFloat(1.0)
            )
        }
    }
    
}