//
//  Hexagon.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import SpriteKit

struct Hexagon {
    let width: CGFloat
    let height: CGFloat
    let origo: CGPoint
    let corners: [CGPoint]
    
    init(width: CGFloat, height: CGFloat, origo: CGPoint, corners: [CGPoint]) {
        self.width = width
        self.height = height
        self.origo = origo
        self.corners = corners
    }
}