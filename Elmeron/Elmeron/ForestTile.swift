//
//  ForestTile.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-19.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class ForestTile: ResourceTile {
    
    override var color : UIColor {
        get {
            return UIColor(
                red: CGFloat(0/255.0),
                green: CGFloat(140/255.0),
                blue: CGFloat(40/255.0),
                alpha: CGFloat(1.0)
            )
        }
    }
}