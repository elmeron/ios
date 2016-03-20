//
//  ElmeronTile.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class ElmeronTile: Tile {
    
    override var color : UIColor {
        get {
            return UIColor(
                red: CGFloat(204/255.0),
                green: CGFloat(0/255.0),
                blue: CGFloat(0/255.0),
                alpha: CGFloat(1.0)
            )
        }
    }
    
}