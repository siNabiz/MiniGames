//
//  GameScene.swift
//  Nimble Ninja
//
//  Created by Mohammad Nabizadeh on 2016-01-25.
//  Copyright (c) 2016 Sina. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        let ground = MLMovingGround(size: CGSizeMake(view.frame.width, 20))
        ground.position = CGPointMake(0, view.frame.size.height/2)
        addChild(ground)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
