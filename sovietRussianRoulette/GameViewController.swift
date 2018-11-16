//
//  GameViewController.swift
//  sovietRussianRoulette
//
//  Created by George Huebner on 10/15/18.
//  Copyright © 2018 George Huebner. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    @IBAction func btnToShop(_ sender: Any) {
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    var revolverSize = 6
    var roundCount = 1
    let death = ""
    let success = ""
    var deathOrNaw = ""
    
    // Shop
    var invulnerabilyHelm = false
    var luckyPotion = false
    
    // Guns
    var magnum = false
    var sniper = false
    var hmg = false
    
    
    
    @IBAction func plusRound(_ sender: Any) {
        if roundCount == revolverSize {
        } else {
            roundCount += 1 }
        rounds.text = String(roundCount)
    }
    
    @IBAction func minusRound(_ sender: Any) {
        if roundCount == 1 {
        } else {
            roundCount = roundCount - 1
        }
        rounds.text = String(roundCount)
    }
    
    
    @IBOutlet weak var rounds: UILabel!
    

    @IBAction func shoot(_ sender: Any) {
        let randoNumber = Int.random(in: 1 ... revolverSize)
        if roundCount >= randoNumber {
            deathOrNaw = death
        } else {
            deathOrNaw = success
        }
    }
}
