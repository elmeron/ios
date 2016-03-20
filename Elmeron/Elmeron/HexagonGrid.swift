//
//  HexagonGrid.swift
//  Elmeron
//
//  Created by Albin Log on 2016-03-20.
//  Copyright © 2016 Elmeron. All rights reserved.
//

import Foundation
import SpriteKit

class HexagonGrid {
    let hexSize: CGFloat
    let hexWidth: CGFloat
    let hexHeight: CGFloat
    
    init(hexSize: CGFloat) {
        self.hexSize = hexSize
        self.hexWidth = calculateWidth(hexSize)
        self.hexHeight = calculateHeight(hexSize)
    }
    
    func getHexagon(x: Int32, y: Int32) -> Hexagon {
        var origo = calculateOrigo(String
        var corners: [CGPoint]
        
        
        for index in 0...5 {
            // Lägg till hörn
        }
        
        return Hexagon(width: hexWidth, height: hexHeight, origo: )
    }
    
    private func calculateCorner(center: CGPoint, size: CGFloat, i: CGFloat) -> CGPoint {
        let angleDeg: CGFloat = 60 * i
        let angleRad: CGFloat = (CGFloat(M_PI) / CGFloat(180)) * angleDeg
        
        return CGPoint(x: center.x + (size * cos(angleRad)), y: center.y + (size * sin(angleRad)))
    }
    
    private func calculateHeight(size: CGFloat) -> CGFloat {
        return sqrt(3) / 2 * calculateWidth(size)
    }
    
    private func calculateWidth(size: CGFloat) -> CGFloat {
        return size * 2
    }
}