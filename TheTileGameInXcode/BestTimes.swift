//
//  BestTimes.swift
//  TheTileGameInXcode
//
//  Created by Adeola Uthman on 8/31/15.
//  Copyright (c) 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation

class BestTimes: UIViewController {

    @IBOutlet var bCTCLabel: UILabel!
    var bestStringEasy: NSString!
    var bestStringMedium: NSString!
    var bestStringHard: NSString!
    
    var bestStringTimedEasy: NSString!
    var bestStringTimedMedium: NSString!
    var bestStringTimedHard: NSString!
    
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayBestTimes()
    }
    
    
    
    func displayBestTimes() {
        //Classic Mode
        if(defaults.valueForKey("EasybestClassicTime") == nil) {
            bestStringEasy = "No saved best time";
        } else {
            bestStringEasy = defaults.valueForKey("EasybestClassicTime") as? String
        }
        
        if(defaults.valueForKey("MediumbestClassicTime") == nil) {
            bestStringMedium = "No saved best time";
        } else {
            bestStringMedium = defaults.valueForKey("MediumbestClassicTime") as? String
        }
        
        if(defaults.valueForKey("HardbestClassicTime") == nil) {
            bestStringHard = "No saved best time";
        } else {
            bestStringHard = defaults.valueForKey("HardbestClassicTime") as? String
        }

        
        //Time Challenge Mode
        if(defaults.valueForKey("bestEasyTimedTime") == nil){
            bestStringTimedEasy = "No saved best time";
        } else {
            bestStringTimedEasy = defaults.valueForKey("bestEasyTimedTime") as? String
        }
        
        if(defaults.valueForKey("bestMediumTimedTime") == nil) {
            bestStringTimedMedium = "No saved best time";
        } else {
            bestStringTimedMedium = defaults.valueForKey("bestMediumTimedTime") as? String
        }
        
        if(defaults.valueForKey("bestHardTimedTime") == nil) {
            bestStringTimedHard = "No saved best time";
        } else {
            bestStringTimedHard = defaults.valueForKey("bestHardTimedTime") as? String
        }
        
        
        bCTCLabel.text = "Best Classic Mode Time: \n\nEasy - \(bestStringEasy)\nMedium - \(bestStringMedium)\nHard - \(bestStringHard)\n\n\n\nBest Time Challenge Time: \n\nEasy - \(bestStringTimedEasy)\nMedium - \(bestStringTimedMedium)\nHard - \(bestStringTimedHard)"
    }
    
    
    @IBAction func goBack() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func goBackSwipe(sender: UISwipeGestureRecognizer) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func clear() {
        let clearAlert: UIAlertController = UIAlertController(title: "Clear Times", message: "Are you sure you want to clear your best times?", preferredStyle: UIAlertControllerStyle.Alert)
        clearAlert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
            self.defaults.setValue(nil, forKey: "EasybestClassicTime")
            self.defaults.setValue(nil, forKey: "MediumbestClassicTime")
            self.defaults.setValue(nil, forKey: "HardbestClassicTime")
            
            self.defaults.setValue(nil, forKey: "bestEasyTimedTime")
            self.defaults.setValue(nil, forKey: "bestMediumTimedTime")
            self.defaults.setValue(nil, forKey: "bestHardTimedTime")
            self.displayBestTimes()
        }))
        clearAlert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Cancel, handler: { (UIAlertAction) -> Void in
            
        }))
        self.presentViewController(clearAlert, animated: true, completion: nil)
    }
}
