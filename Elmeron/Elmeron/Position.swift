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

class Tile {
    var type: KindOfTile
    var position: Position
    var color: UIColor {
        get {
            switch type {
            case .Ocean:
                return UIColor(red: CGFloat(0/255.0), green: CGFloat(113/255.0), blue: CGFloat(188/255.0), alpha: CGFloat(1.0))
            case .Sea:
                return UIColor(red: CGFloat(63/255.0), green: CGFloat(169/255.0), blue: CGFloat(245/255.0), alpha: CGFloat(1.0))
            case .Field:
                return UIColor(red: CGFloat(122/255.0), green: CGFloat(201/255.0), blue: CGFloat(67/255.0), alpha: CGFloat(1.0))
            case .Desert:
                return UIColor(red: CGFloat(244/255.0), green: CGFloat(223/255.0), blue: CGFloat(155/255.0), alpha: CGFloat(1.0))
            case .Forest:
                return UIColor(red: CGFloat(0/255.0), green: CGFloat(140/255.0), blue: CGFloat(40/255.0), alpha: CGFloat(1.0))
            case .Mud:
                return UIColor(red: CGFloat(195/255.0), green: CGFloat(97/255.0), blue: CGFloat(51/255.0), alpha: CGFloat(1.0))
            case .Mountain:
                return UIColor(red: CGFloat(128/255.0), green: CGFloat(128/255.0), blue: CGFloat(128/255.0), alpha: CGFloat(1.0))
            case .Ice:
                return UIColor(red: CGFloat(245/255.0), green: CGFloat(245/255.0), blue: CGFloat(245/255.0), alpha: CGFloat(1.0))
            default:
                return UIColor.blackColor()
            }
        }
    }
    
    init(type: KindOfTile, position: Position) {
        self.type = type
        self.position = position
    }
}

class Map {
    
    var type: KindOfMap
    var tiles: [Tile]
    var title: NSString
    
    init(title: NSString, type: KindOfMap) {
        
        tiles = []
        self.title = title
        self.type = type
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