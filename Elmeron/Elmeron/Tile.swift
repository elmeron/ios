//
//  Tile.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-19.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class Tile {
    var position: Position
    
    init(position: Position) {
        self.position = position
    }
    
    var color: UIColor {
        get {
            fatalError("Color not implemented")
        }
    }
}