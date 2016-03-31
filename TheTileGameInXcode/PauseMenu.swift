//
//  PauseMenu.swift
//  TheTileGameInXcode
//
//  Created by Adeola Uthman on 10/18/15.
//  Copyright © 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation

public var goToUnpause: Bool! = false
public var goToRestart: Bool! = false
public var goToQuit: Bool! = false

class PauseMenu: UIViewController {
    
    @IBOutlet var unpauseButton: UIButton!
    @IBOutlet var restartButton: UIButton!
    @IBOutlet var quitButton: UIButton!

    @IBAction func unpause(sender: UIButton) {
        goToUnpause = true
        goToRestart = false
        goToQuit = false
    }

    @IBAction func restart(sender: UIButton) {
        goToRestart = true
        goToUnpause = false
        goToQuit = false
    }
    
    @IBAction func quitGame(sender: UIButton) {
        goToQuit = true
        goToUnpause = false
        goToRestart = false
    }
}
