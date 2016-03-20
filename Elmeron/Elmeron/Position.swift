//
//  Position.swift
//  Elmeron
//
//  Created by Albin Log on 2015-08-31.
//  Copyright (c) 2015 Elmeron. All rights reserved.
//

import Foundation
import UIKit

struct Position {
    var x: Int32
    var z: Int32
    var y: Int32 {
        get {
            return 0 - x - z
        }
    }
}





enum KindOfTile {
    case Ocean
    case Sea
    case Ice
    case Forest
    case Field
    case Mountain
    case Mud
    case Desert
}

enum KindOfMap {
    case Island
    case Planet
    case Space
}