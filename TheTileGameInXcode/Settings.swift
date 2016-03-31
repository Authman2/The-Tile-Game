//
//  Settings.swift
//  TheTileGameInXcode
//
//  Created by Adeola Uthman on 8/30/15.
//  Copyright (c) 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation

class Settings: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func goBack() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func goBackSwipe(sender: UISwipeGestureRecognizer) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func clickedHTP(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc : HowToPlay = sb.instantiateViewControllerWithIdentifier("howToPlayVC") as! HowToPlay
        self.presentViewController(vc, animated: true, completion: nil)
    }

    @IBAction func goToBestTimes() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc: BestTimes = sb.instantiateViewControllerWithIdentifier("bestTimesVC") as! BestTimes
        self.presentViewController(vc, animated: true, completion: nil)
    }

    @IBAction func rateApp() {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=1025254000&mt=8")!)
    }
}
