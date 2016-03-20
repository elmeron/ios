//
//  Hex.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation

struct Hex {
    var x: Int32
    var y: Int32
    
    init(x: Int32, y:Int32) {
        self.x = x
        self.y = y
    }
    
    func toCube() -> Cube {
        return Cube(x: self.x, y: self.y, z: 0 - self.x - self.y)
    }
}