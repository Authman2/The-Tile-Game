//
//  Lose.swift
//  TheTileGameInXcode
//
//  Created by Adeola Uthman on 7/16/15.
//  Copyright (c) 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation
import TimeCounter

class Lose: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        isOnWinningScreen = false
        isOnHomeScreen = false
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func playAgain(sender: UIButton){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let g: Game = sb.instantiateViewControllerWithIdentifier("GameVC") as! Game
        self.presentViewController(g, animated: true, completion: nil)
        
        if(typeOfGame.isEqualToString("classic")){
            typeOfGame = "classic"
            tUp.reset()
            if difficulty.isEqualToString("easy") {
                difficulty = "easy"
            } else if difficulty.isEqualToString("medium") {
                difficulty = "medium"
            } else if difficulty.isEqualToString("hard") {
                difficulty = "hard"
            }
        } else if (typeOfGame.isEqualToString("timed")){
            typeOfGame = "timed"
            
            if difficulty.isEqualToString("easy") {
                difficulty = "easy"
                tDown.minutes = 5
                tDown.seconds = 0
                tDown.setTotalSeconds(300)
                tDown.reset()
            } else if difficulty.isEqualToString("medium") {
                difficulty = "medium"
                tDown.minutes = 3
                tDown.seconds = 0
                tDown.setTotalSeconds(180)
                tDown.reset()
            } else if difficulty.isEqualToString("hard") {
                difficulty = "hard"
                tDown.minutes = 1
                tDown.seconds = 30
                tDown.setTotalSeconds(90)
                tDown.reset()
            }
        }
    }
    
    @IBAction func goHome(sender: UIButton){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let h: Home = sb.instantiateViewControllerWithIdentifier("HomeVC") as! Home
        self.presentViewController(h, animated: true, completion: nil)
    }

}
