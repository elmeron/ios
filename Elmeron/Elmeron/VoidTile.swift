//
//  VoidTile.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class VoidTile: Tile {
    
    override var color : UIColor {
        get {
            return UIColor(
                red: CGFloat(255/255.0),
                green: CGFloat(255/255.0),
                blue: CGFloat(255/255.0),
                alpha: CGFloat(0.1)
            )
        }
    }
    
}