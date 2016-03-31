//
//  Win.swift
//  TheTileGameInXcode
//
//  Created by Adeola Uthman on 7/16/15.
//  Copyright (c) 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation
import Social

public var isOnWinningScreen: Bool!


class Win: UIViewController {
    
    @IBOutlet var finaltimeLabel: UILabel! = UILabel()
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        isOnWinningScreen = true
        isOnHomeScreen = false
        
        self.determineBestTime()
    }
    
    
    //CALLED TO SET THE TIME LABEL
    func setTimeLabelText(text: NSString){
        if typeOfGame.isEqualToString("classic") {
            finaltimeLabel.text = text as String
        } else if typeOfGame.isEqualToString("timed") {
            finaltimeLabel.text = (text as String) + " remaining"
        }
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
        
        // NO GAME MODE HAS BEEN SELECTED //
        typeOfGame = ""
        difficulty = ""
        
        if typeOfGame.isEqualToString("classic") {
            tUp.reset()
        }
        
        if typeOfGame.isEqualToString("timed") {
            tDown.minutes = 3
            tDown.seconds = 0
            tDown.reset()
        }
    }
    
    
    func determineBestTime(){
        if typeOfGame.isEqualToString("classic") {
            if difficulty.isEqualToString("easy") {
                if defaults.valueForKey("EasybestClassicTime") == nil {
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "EasyclassicBackSeconds")
                    
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "EasybestClassicTime")
                    print(defaults.valueForKey("EasybestClassicTime")!)
                }
                
                if (tUp.getTotalSeconds() <= defaults.integerForKey("EasyclassicBackSeconds")) {
                    
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "EasyclassicBackSeconds")
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "EasybestClassicTime")
                    print(defaults.valueForKey("EasybestClassicTime"))
                    
                }
            } else if difficulty.isEqualToString("medium") {
                if defaults.valueForKey("MediumbestClassicTime") == nil {
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "MediumclassicBackSeconds")
                    
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "MediumbestClassicTime")
                    print(defaults.valueForKey("MediumbestClassicTime")!)
                }
                
                if (tUp.getTotalSeconds() <= defaults.integerForKey("MediumclassicBackSeconds")) {
                    
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "MediumclassicBackSeconds")
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "MediumbestClassicTime")
                    print(defaults.valueForKey("MediumbestClassicTime"))
                    
                }
            } else if difficulty.isEqualToString("hard") {
                if defaults.valueForKey("HardbestClassicTime") == nil {
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "HardclassicBackSeconds")
                    
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "HardbestClassicTime")
                    print(defaults.valueForKey("HardbestClassicTime")!)
                }
                
                if (tUp.getTotalSeconds() <= defaults.integerForKey("HardclassicBackSeconds")) {
                    
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "HardclassicBackSeconds")
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "HardbestClassicTime")
                    print(defaults.valueForKey("HardbestClassicTime"))
                    
                }
            }
        }
        
        if typeOfGame.isEqualToString("timed") {
            if difficulty.isEqualToString("easy") {
                if defaults.valueForKey("bestEasyTimedTime") == nil {
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "EasytimedBackSeconds")
                    
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "bestEasyTimedTime")
                    print(defaults.valueForKey("bestEasyTimedTime")!)
                }
                
                if ((tDown.getTotalSeconds() >= defaults.integerForKey("EasytimedBackSeconds"))) {
                    defaults.setInteger(tDown.getTotalSeconds(), forKey: "EasytimedBackSeconds")
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "bestEasyTimedTime")
                    print(defaults.valueForKey("bestEasyTimedTime"))
                }
            } else if difficulty.isEqualToString("medium") {
                if defaults.valueForKey("bestMediumTimedTime") == nil {
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "MediumtimedBackSeconds")
                    
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "bestMediumTimedTime")
                    print(defaults.valueForKey("bestMediumTimedTime")!)
                }
                
                if ((tDown.getTotalSeconds() >= defaults.integerForKey("MediumtimedBackSeconds"))) {
                    defaults.setInteger(tDown.getTotalSeconds(), forKey: "MediumtimedBackSeconds")
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "bestMediumTimedTime")
                    print(defaults.valueForKey("bestMediumTimedTime"))
                }
            } else if difficulty.isEqualToString("hard") {
                if defaults.valueForKey("bestHardTimedTime") == nil {
                    defaults.setInteger(tUp.getTotalSeconds(), forKey: "HardtimedBackSeconds")
                    
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "bestHardTimedTime")
                    print(defaults.valueForKey("bestHardTimedTime")!)
                }
                
                if ((tDown.getTotalSeconds() >= defaults.integerForKey("HardtimedBackSeconds"))) {
                    defaults.setInteger(tDown.getTotalSeconds(), forKey: "HardtimedBackSeconds")
                    defaults.setValue("\(self.finaltimeLabel.text!)", forKey: "bestHardTimedTime")
                    print(defaults.valueForKey("bestHardTimedTime"))
                }
            }
        }
    }
    
    
    @IBAction func postToTwitter(){
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            
            let tweetSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            tweetSheet.setEditing(false, animated: false)
            
            if typeOfGame.isEqualToString("classic") {
                tweetSheet.setInitialText("I just beat The Tile Game! \(finaltimeLabel.text!)")
            } else if typeOfGame.isEqualToString("timed") {
                tweetSheet.setInitialText("I just beat The Tile Game! \(finaltimeLabel.text!)")
            }
            
            self.presentViewController(tweetSheet, animated: true, completion: nil)
        }
    }
    
    @IBAction func postToFacebook(){
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            let statusUpdate:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            statusUpdate.setEditing(false, animated: false)
            
            if typeOfGame.isEqualToString("classic") {
                statusUpdate.setInitialText("I just beat The Tile Game! \(finaltimeLabel.text!)")
            } else if typeOfGame.isEqualToString("timed") {
                statusUpdate.setInitialText("I just beat The Tile Game! \(finaltimeLabel.text!)")
            }
            
            self.presentViewController(statusUpdate, animated: true, completion: nil)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}