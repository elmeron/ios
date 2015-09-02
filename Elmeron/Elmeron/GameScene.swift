//
//  GameScene.swift
//  Elmeron
//
//  Created by Albin Log on 2015-08-28.
//  Copyright (c) 2015 Elmeron. All rights reserved.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor.whiteColor()
        
        var server = Server()
        var map = server.GetMap()
        
        for tile in map.tiles
        {
            layOutTile(tile)
        }
    }
    
    func layOutTile(tile: Tile) {
        let size = CGFloat(11)
        let point = hexToPixel(size, position: tile.position)
        
        let tileView = TileView(tile: tile, frame: CGRect(x:point.x, y:point.y, width:20, height:20))
        self.view?.addSubview(tileView)
    }
    
    func hexToPixel(size: CGFloat, position: Position) -> CGPoint {
        let x = size * CGFloat(3)/CGFloat(2) * CGFloat(position.x)
        let y = size * sqrt(3) * (CGFloat(position.z) + CGFloat(position.x)/CGFloat(2))
        return CGPoint(x: x, y:y)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            let location = touch.locationInNode(self)
            
            
            
            /*
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
            */
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    /*
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch in (touches as! Set<NSSet>) {
            let location = touch.locationInNode(self)
            let touchedNode = nodeAtPoint(location)
            touchedNode.position = location
        }
    }
    */
}
