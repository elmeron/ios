//
//  Server.swift
//  Elmeron
//
//  Created by Albin Log on 2015-08-31.
//  Copyright (c) 2015 Elmeron. All rights reserved.
//

import Foundation
import UIKit

class Server {
    
    func SendTest(message: NSString) -> NSString {	
        if (message == "ELM") {
            return "ERON"
        }
        else {
            return ""
        }
    }
    
    func GetMap() -> Map {
        let map = Map(title: "The Lonely Island", type: KindOfMap.Island)
        
        map.tiles.append(CreateTile(KindOfTile.Field, position: Position(x: 0, z: 0)))
        map.tiles.append(CreateTile(KindOfTile.Forest, position: Position(x: 1, z: 0)))
        map.tiles.append(CreateTile(KindOfTile.Desert, position: Position(x: 0, z: 1)))
        map.tiles.append(CreateTile(KindOfTile.Mountain, position: Position(x: 1, z: 1)))
        
        map.tiles.append(CreateTile(KindOfTile.Mud, position: Position(x: 4, z: 3)))
        map.tiles.append(CreateTile(KindOfTile.Mud, position: Position(x: 5, z: 3)))
        map.tiles.append(CreateTile(KindOfTile.Mud, position: Position(x: 4, z: 4)))
        map.tiles.append(CreateTile(KindOfTile.Mud, position: Position(x: 5, z: 4)))
        
        map.tiles.append(CreateTile(KindOfTile.Mountain, position: Position(x: 10, z: 10)))
        map.tiles.append(CreateTile(KindOfTile.Mountain, position: Position(x: 11, z: 10)))
        map.tiles.append(CreateTile(KindOfTile.Mountain, position: Position(x: 11, z: 11)))
        map.tiles.append(CreateTile(KindOfTile.Mountain, position: Position(x: 10, z: 12)))
        map.tiles.append(CreateTile(KindOfTile.Mountain, position: Position(x: 9, z: 12)))
        map.tiles.append(CreateTile(KindOfTile.Mountain, position: Position(x: 9, z: 11)))
        map.tiles.append(CreateTile(KindOfTile.Ice, position: Position(x: 10, z: 11)))
        
        return map
    }
    
    func CreateTile(type: KindOfTile, position: Position) -> Tile {
        let tile = Tile(type: type, position: position)
        
        return tile
    }
    
    

}