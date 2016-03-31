//
//  HowToPlay.swift
//  The Tile Game
//
//  Created by Adeola Uthman on 10/15/15.
//  Copyright © 2015 Adeola Uthman. All rights reserved.
//

import UIKit

class HowToPlay: UIViewController {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goBack() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func goBackSwipe(sender: UISwipeGestureRecognizer) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}