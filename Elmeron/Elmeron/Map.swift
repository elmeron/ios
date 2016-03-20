//
//  Map.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class Map {

    var tiles: [Tile]
    var title: NSString
    
    init(title: NSString) {
        
        tiles = []
        self.title = title
    }
    
    var backgroundColor: UIColor {
        get {
            fatalError("Background color not implemented")
        }
    }
    
}