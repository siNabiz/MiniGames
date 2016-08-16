//
//  GameOverScene.swift
//  Breakout
//
//  Created by Mohammad Nabizadeh on 2016-01-24.
//  Copyright © 2016 Sina. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {

    init(size: CGSize, playerWon:Bool) {
        super.init(size: size)
        
        let backgroundImage = SKSpriteNode(imageNamed: "bg")
        backgroundImage.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(backgroundImage)
        
        let gameOverLabel = SKLabelNode (fontNamed: "Avenir-Black")
        gameOverLabel.fontSize = 46
        gameOverLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        
        if playerWon {
            gameOverLabel.text = "YOU WIN!"
        } else {
            gameOverLabel.text = "GAME OVER!"
        }
        
        self.addChild(gameOverLabel)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let breakoutGameScene = GameScene(size: self.size)
        self.view?.presentScene(breakoutGameScene)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
