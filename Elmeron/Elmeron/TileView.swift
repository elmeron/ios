//
//  TileView.swift
//  Elmeron
//
//  Created by Albin Log on 2015-08-31.
//  Copyright (c) 2015 Elmeron. All rights reserved.
//

import UIKit

class TileView: UIButton {
    
    var tile: Tile
    
    init(tile: Tile, frame: CGRect) {
        self.tile = tile
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let size = rect.width / 2
        let corner1 = hexCorner(center, size: size, i: 0)
        let corner2 = hexCorner(center, size: size, i: 1)
        let corner3 = hexCorner(center, size: size, i: 2)
        let corner4 = hexCorner(center, size: size, i: 3)
        let corner5 = hexCorner(center, size: size, i: 4)
        let corner6 = hexCorner(center, size: size, i: 5)
        
        CGContextSetFillColorWithColor(context, tile.color.CGColor)
        CGContextMoveToPoint(context, corner1.x, corner1.y)
        CGContextAddLineToPoint(context, corner2.x, corner2.y)
        CGContextAddLineToPoint(context, corner3.x, corner3.y)
        CGContextAddLineToPoint(context, corner4.x, corner4.y)
        CGContextAddLineToPoint(context, corner5.x, corner5.y)
        CGContextAddLineToPoint(context, corner6.x, corner6.y)
        CGContextFillPath(context)
    }
    
    func hexCorner(center: CGPoint, size: CGFloat, i: CGFloat) -> CGPoint {
        let angleDeg: CGFloat = 60 * i
        let angleRad: CGFloat = (CGFloat(M_PI) / CGFloat(180)) * angleDeg
        
        return CGPoint(x: center.x + (size * cos(angleRad)), y: center.y + (size * sin(angleRad)))
    }

}