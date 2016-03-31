//
//  Home.swift
//  TheTileGameInXcode
//
//  Created by Adeola Uthman on 7/15/15.
//  Copyright (c) 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation

public var difficulty: NSString!
public var typeOfGame: NSString!
public var isOnHomeScreen: Bool! = true

class Home: UIViewController {
    
    @IBOutlet var classicModeButton: UIButton!
    @IBOutlet var timeChallengeModeButton: UIButton!
    @IBOutlet var settingsButton: UIButton!
    
    @IBOutlet var easyModeButton: UIButton!
    @IBOutlet var mediumModeButton: UIButton!
    @IBOutlet var hardModeButton: UIButton!
    @IBOutlet var difficultyView: UIView!
    
    var classicOpened: Bool = false
    var timeCOpened: Bool = false    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isOnHomeScreen = true
        isOnWinningScreen = false
        
        typeOfGame = nil
        difficulty = nil
        
        tUp.reset()
        tDown.reset()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        classicOpened = false
        timeCOpened = false
        
        if(defaults.boolForKey("alreadyLaunched") == false) {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc: HowToPlay = sb.instantiateViewControllerWithIdentifier("howToPlayVC") as! HowToPlay
            self.presentViewController(vc, animated: true, completion: nil)
            defaults.setBool(true, forKey: "alreadyLaunched")
        }
        
    }
    
    @IBAction func clickedClassicMode(){
        typeOfGame = "classic"
        if classicOpened == false {
            classicOpened = true
            timeCOpened = false
            UIView.animateWithDuration(0.28, animations: { () -> Void in
                self.classicModeButton.frame.origin.y -= 50
                
                self.easyModeButton.alpha = 1
                self.mediumModeButton.alpha = 1
                self.hardModeButton.alpha = 1
                self.difficultyView.frame.origin.y -= 30
                
                self.timeChallengeModeButton.frame.origin.y += 88
                self.timeChallengeModeButton.alpha = 0.35
                self.timeChallengeModeButton.userInteractionEnabled = false
                
                self.settingsButton.frame.origin.y += 88
                self.settingsButton.alpha = 0.35
                self.settingsButton.userInteractionEnabled = false
            })
        } else {
            classicOpened = false
            UIView.animateWithDuration(0.28, animations: { () -> Void in
                self.classicModeButton.frame.origin.y += 50
                
                self.easyModeButton.alpha = 0
                self.mediumModeButton.alpha = 0
                self.hardModeButton.alpha = 0
                self.difficultyView.frame.origin.y += 30
                
                self.timeChallengeModeButton.frame.origin.y -= 88
                self.timeChallengeModeButton.alpha = 1
                self.timeChallengeModeButton.userInteractionEnabled = true
                
                self.settingsButton.frame.origin.y -= 88
                self.settingsButton.alpha = 1
                self.settingsButton.userInteractionEnabled = true
            })
        }
    }
    
    @IBAction func clickedTimeChallengeMode(){
        typeOfGame = "timed"
        if timeCOpened == false {
            timeCOpened = true
            classicOpened = false
            UIView.animateWithDuration(0.28, animations: { () -> Void in
                self.timeChallengeModeButton.frame.origin.y -= 60
                
                self.easyModeButton.alpha = 1
                self.mediumModeButton.alpha = 1
                self.hardModeButton.alpha = 1
                self.difficultyView.frame.origin.y += 35
                
                self.classicModeButton.frame.origin.y -= 50
                self.classicModeButton.alpha = 0.35
                self.classicModeButton.userInteractionEnabled = false
                
                self.settingsButton.frame.origin.y += 85
                self.settingsButton.alpha = 0.35
                self.settingsButton.userInteractionEnabled = false
            })
        } else {
            timeCOpened = false
            UIView.animateWithDuration(0.28, animations: { () -> Void in
                self.timeChallengeModeButton.frame.origin.y += 60
                
                self.easyModeButton.alpha = 0
                self.mediumModeButton.alpha = 0
                self.hardModeButton.alpha = 0
                self.difficultyView.frame.origin.y -= 35
                
                self.classicModeButton.frame.origin.y += 50
                self.classicModeButton.alpha = 1
                self.classicModeButton.userInteractionEnabled = true
                
                self.settingsButton.frame.origin.y -= 85
                self.settingsButton.alpha = 1
                self.settingsButton.userInteractionEnabled = true
            })
        }
    }
    
    
    @IBAction func clickedSettings() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc: Settings = sb.instantiateViewControllerWithIdentifier("SettingsVC") as! Settings
        self.presentViewController(vc, animated: true, completion: nil)
    }

    
    @IBAction func easyMode() {
        difficulty = "easy";
        isOnHomeScreen = false
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let g: Game = sb.instantiateViewControllerWithIdentifier("GameVC") as! Game
        self.presentViewController(g, animated: true, completion: nil)
        
        print(typeOfGame)
        print(difficulty)
    }
    
    @IBAction func mediumMode(){
        difficulty = "medium"
        isOnHomeScreen = false
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let g: Game = sb.instantiateViewControllerWithIdentifier("GameVC") as! Game
        self.presentViewController(g, animated: true, completion: nil)
        
        print(typeOfGame)
        print(difficulty)
    }
    
    @IBAction func hardMode(){
        difficulty = "hard"
        isOnHomeScreen = false
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let g: Game = sb.instantiateViewControllerWithIdentifier("GameVC") as! Game
        self.presentViewController(g, animated: true, completion: nil)
                
        print(typeOfGame)
        print(difficulty)
    }
    
}
