//
//  Cube.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation

struct Cube {
    var x: Int32
    var y: Int32
    var z: Int32
    
    init(x: Int32, y: Int32, z: Int32) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    func toHex() -> Hex {
        return Hex(x: self.x, y: self.y)
    }
}