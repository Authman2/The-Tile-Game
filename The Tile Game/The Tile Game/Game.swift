//
//  Game.swift
//  The Tile Game
//
//  Created by Adeola Uthman on 7/15/15.
//  Copyright (c) 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation
import TGTile
import TimeCounter


public var gamePaused: Bool! = false

//Define all of the time related objects (except 'update')
public let tUp: TCCountUp = TCCountUp()
public let tDown: TCCountDown = TCCountDown()

//References the framework that controls the animations
let tvTile: TGTile = TGTile()


public class Game: UIViewController {
    
    @IBOutlet public var s1: UIImageView! = UIImageView()
    @IBOutlet public var s2: UIImageView! = UIImageView()
    @IBOutlet public var s3: UIImageView! = UIImageView()
    @IBOutlet public var s4: UIImageView! = UIImageView()
    @IBOutlet public var s5: UIImageView! = UIImageView()
    @IBOutlet public var s6: UIImageView! = UIImageView()
    @IBOutlet public var s7: UIImageView! = UIImageView()
    @IBOutlet public var s8: UIImageView! = UIImageView()
    @IBOutlet public var s9: UIImageView! = UIImageView()
    @IBOutlet public var s10: UIImageView! = UIImageView()
    @IBOutlet public var s11: UIImageView! = UIImageView()
    @IBOutlet public var s12: UIImageView! = UIImageView()
    @IBOutlet public var s13: UIImageView! = UIImageView()
    @IBOutlet public var s14: UIImageView! = UIImageView()
    @IBOutlet public var s15: UIImageView! = UIImageView()
    
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet public var pauseButton: UIButton!
    
    @IBOutlet var contView: UIView!
    
    public var updateTimer: NSTimer!
    
    
    
    
    override public func prefersStatusBarHidden() -> Bool {
        return true
    }
    override public func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        self.randomizeTiles()
        
        updateTimer = NSTimer.scheduledTimerWithTimeInterval(0.30, target: self, selector: #selector(Game.update), userInfo: nil, repeats: true)
        
        
        if typeOfGame.isEqualToString("classic") {
            tUp.startCountingUp()
        } else if typeOfGame.isEqualToString("timed") {
            if(difficulty.isEqualToString("easy")) {
                tDown.minutes = 5
                tDown.seconds = 0
                tDown.setTotalSeconds(300)
                tDown.startCountingDown()
            } else if difficulty.isEqualToString("medium") {
                tDown.minutes = 3
                tDown.seconds = 0
                tDown.setTotalSeconds(180)
                tDown.startCountingDown()
            } else if difficulty.isEqualToString("hard") {
                tDown.minutes = 1
                tDown.seconds = 30
                tDown.setTotalSeconds(90)
                tDown.startCountingDown()
            }
        }
    }
    override public func viewDidLoad() {
        super.viewDidLoad()
        isOnHomeScreen = false
        isOnWinningScreen = false
        
        tUp.timeLabel = self.timeLabel
        tDown.timeLabel = self.timeLabel
        
        Tiles.addObject(blueSquare!)
        Tiles.addObject(greenTriangle!)
        Tiles.addObject(redX!)
        Tiles.addObject(purpleCircle!)
        Tiles.addObject(orangeDiamond!)
    }
    
    
    func update(){
        switch(s1Rand){
        case 0:
            s1.image = blueSquare
            break
        case 1:
            s1.image = greenTriangle
            break
        case 2:
            s1.image = redX
            break
        case 3:
            s1.image = purpleCircle
            break
        case 4:
            s1.image = orangeDiamond
            break
        default:
            break
        }
        switch(s2Rand){
        case 0:
            s2.image = blueSquare
            break
        case 1:
            s2.image = greenTriangle
            break
        case 2:
            s2.image = redX
            break
        case 3:
            s2.image = purpleCircle
            break
        case 4:
            s2.image = orangeDiamond
            break
        default:
            break
        }
        switch(s3Rand){
        case 0:
            s3.image = blueSquare
            break
        case 1:
            s3.image = greenTriangle
            break
        case 2:
            s3.image = redX
            break
        case 3:
            s3.image = purpleCircle
            break
        case 4:
            s3.image = orangeDiamond
            break
        default:
            break
        }
        switch(s4Rand){
        case 0:
            s4.image = blueSquare
            break
        case 1:
            s4.image = greenTriangle
            break
        case 2:
            s4.image = redX
            break
        case 3:
            s4.image = purpleCircle
            break
        case 4:
            s4.image = orangeDiamond
            break
        default:
            break
        }
        switch(s5Rand){
        case 0:
            s5.image = blueSquare
            break
        case 1:
            s5.image = greenTriangle
            break
        case 2:
            s5.image = redX
            break
        case 3:
            s5.image = purpleCircle
            break
        case 4:
            s5.image = orangeDiamond
            break
        default:
            break
        }
        switch(s6Rand){
        case 0:
            s6.image = blueSquare
            break
        case 1:
            s6.image = greenTriangle
            break
        case 2:
            s6.image = redX
            break
        case 3:
            s6.image = purpleCircle
            break
        case 4:
            s6.image = orangeDiamond
            break
        default:
            break
        }
        switch(s7Rand){
        case 0:
            s7.image = blueSquare
            break
        case 1:
            s7.image = greenTriangle
            break
        case 2:
            s7.image = redX
            break
        case 3:
            s7.image = purpleCircle
            break
        case 4:
            s7.image = orangeDiamond
            break
        default:
            break
        }
        switch(s8Rand){
        case 0:
            s8.image = blueSquare
            break
        case 1:
            s8.image = greenTriangle
            break
        case 2:
            s8.image = redX
            break
        case 3:
            s8.image = purpleCircle
            break
        case 4:
            s8.image = orangeDiamond
            break
        default:
            break
        }
        switch(s9Rand){
        case 0:
            s9.image = blueSquare
            break
        case 1:
            s9.image = greenTriangle
            break
        case 2:
            s9.image = redX
            break
        case 3:
            s9.image = purpleCircle
            break
        case 4:
            s9.image = orangeDiamond
            break
        default:
            break
        }
        switch(s10Rand){
        case 0:
            s10.image = blueSquare
            break
        case 1:
            s10.image = greenTriangle
            break
        case 2:
            s10.image = redX
            break
        case 3:
            s10.image = purpleCircle
            break
        case 4:
            s10.image = orangeDiamond
            break
        default:
            break
        }
        switch(s11Rand){
        case 0:
            s11.image = blueSquare
            break
        case 1:
            s11.image = greenTriangle
            break
        case 2:
            s11.image = redX
            break
        case 3:
            s11.image = purpleCircle
            break
        case 4:
            s11.image = orangeDiamond
            break
        default:
            break
        }
        switch(s12Rand){
        case 0:
            s12.image = blueSquare
            break
        case 1:
            s12.image = greenTriangle
            break
        case 2:
            s12.image = redX
            break
        case 3:
            s12.image = purpleCircle
            break
        case 4:
            s12.image = orangeDiamond
            break
        default:
            break
        }
        switch(s13Rand){
        case 0:
            s13.image = blueSquare
            break
        case 1:
            s13.image = greenTriangle
            break
        case 2:
            s13.image = redX
            break
        case 3:
            s13.image = purpleCircle
            break
        case 4:
            s13.image = orangeDiamond
            break
        default:
            break
        }
        switch(s14Rand){
        case 0:
            s14.image = blueSquare
            break
        case 1:
            s14.image = greenTriangle
            break
        case 2:
            s14.image = redX
            break
        case 3:
            s14.image = purpleCircle
            break
        case 4:
            s14.image = orangeDiamond
            break
        default:
            break
        }
        switch(s15Rand){
        case 0:
            s15.image = blueSquare
            break
        case 1:
            s15.image = greenTriangle
            break
        case 2:
            s15.image = redX
            break
        case 3:
            s15.image = purpleCircle
            break
        case 4:
            s15.image = orangeDiamond
            break
        default:
            break
        }
        
        self.checkGameStatus()
        self.checkForPausing()
    }
    func checkForPausing() {
        if(goToUnpause == true) {
            self.unpause()
        } else if(goToRestart == true) {
            self.restart()
        } else if(goToQuit == true) {
            self.quit()
        }
    }
    
    public func randomizeTiles(){
        if difficulty.isEqualToString("easy") {
            s1Rand = Int(arc4random_uniform(3))
            s2Rand = Int(arc4random_uniform(3))
            s3Rand = Int(arc4random_uniform(3))
            s4Rand = Int(arc4random_uniform(3))
            s5Rand = Int(arc4random_uniform(3))
            s6Rand = Int(arc4random_uniform(3))
            s7Rand = Int(arc4random_uniform(3))
            s8Rand = Int(arc4random_uniform(3))
            s9Rand = Int(arc4random_uniform(3))
            s10Rand = Int(arc4random_uniform(3))
            s11Rand = Int(arc4random_uniform(3))
            s12Rand = Int(arc4random_uniform(3))
            s13Rand = Int(arc4random_uniform(3))
            s14Rand = Int(arc4random_uniform(3))
            s15Rand = Int(arc4random_uniform(3))
        } else if difficulty.isEqualToString("medium") {
            s1Rand = Int(arc4random_uniform(4))
            s2Rand = Int(arc4random_uniform(4))
            s3Rand = Int(arc4random_uniform(4))
            s4Rand = Int(arc4random_uniform(4))
            s5Rand = Int(arc4random_uniform(4))
            s6Rand = Int(arc4random_uniform(4))
            s7Rand = Int(arc4random_uniform(4))
            s8Rand = Int(arc4random_uniform(4))
            s9Rand = Int(arc4random_uniform(4))
            s10Rand = Int(arc4random_uniform(4))
            s11Rand = Int(arc4random_uniform(4))
            s12Rand = Int(arc4random_uniform(4))
            s13Rand = Int(arc4random_uniform(4))
            s14Rand = Int(arc4random_uniform(4))
        } else if difficulty.isEqualToString("hard") {
            s1Rand = Int(arc4random_uniform(5))
            s2Rand = Int(arc4random_uniform(5))
            s3Rand = Int(arc4random_uniform(5))
            s4Rand = Int(arc4random_uniform(5))
            s5Rand = Int(arc4random_uniform(5))
            s6Rand = Int(arc4random_uniform(5))
            s7Rand = Int(arc4random_uniform(5))
            s8Rand = Int(arc4random_uniform(5))
            s9Rand = Int(arc4random_uniform(5))
            s10Rand = Int(arc4random_uniform(5))
            s11Rand = Int(arc4random_uniform(5))
            s12Rand = Int(arc4random_uniform(5))
            s13Rand = Int(arc4random_uniform(5))
            s14Rand = Int(arc4random_uniform(5))
        }
    }
    
    
    func checkGameStatus(){
        if(s1Rand == s2Rand && s2Rand == s3Rand && s3Rand == s4Rand && s4Rand == s5Rand && s5Rand == s6Rand && s6Rand == s7Rand && s7Rand == s8Rand && s8Rand == s9Rand && s9Rand == s10Rand && s10Rand == s11Rand && s11Rand == s12Rand && s12Rand == s13Rand && s13Rand == s14Rand && s14Rand == s15Rand){
            s1.userInteractionEnabled = false
            s2.userInteractionEnabled = false
            s3.userInteractionEnabled = false
            s4.userInteractionEnabled = false
            s5.userInteractionEnabled = false
            s6.userInteractionEnabled = false
            s7.userInteractionEnabled = false
            s8.userInteractionEnabled = false
            s9.userInteractionEnabled = false
            s10.userInteractionEnabled = false
            s11.userInteractionEnabled = false
            s12.userInteractionEnabled = false
            s13.userInteractionEnabled = false
            s14.userInteractionEnabled = false
            s15.userInteractionEnabled = false
            
            _ = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(Game.goToWinnerScene), userInfo: nil, repeats: false)
            
            if typeOfGame.isEqualToString("classic") {
                tUp.stopCountingUp()
            }
            if typeOfGame.isEqualToString("timed") {
                tDown.stopCountingDown()
            }
        }
        
        if tDown.minutes == 0 && tDown.seconds == 0 && !typeOfGame.isEqualToString("classic") {
            self.goToLoserScene()
        }
    }
    
    func goToWinnerScene(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let w: Win = sb.instantiateViewControllerWithIdentifier("WinVC") as! Win
        self.presentViewController(w, animated: true, completion: nil)
        w.setTimeLabelText(timeLabel.text!)
        
        self.updateTimer.invalidate()
    }
    func goToLoserScene(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let l: Lose = sb.instantiateViewControllerWithIdentifier("LoseVC") as! Lose
        self.presentViewController(l, animated: true, completion: nil)
        
        self.updateTimer.invalidate()
    }
    
    
    @IBAction func pause(){
        gamePaused = true
        
        UIView.animateWithDuration(0.28) { () -> Void in
            self.contView.alpha = 1
        }
        pauseButton.alpha = 0.35
        pauseButton.userInteractionEnabled = false
        
        tvTile.shouldAnimateWhenPaused(s1, second: s2, third: s3, fourth: s4, fifth: s5, sixth: s6, seventh: s7, eigth: s8, ninth: s9, tenth: s10, eleventh: s11, twelth: s12, thirteenth: s13, fourteenth: s14, fifteenth: s15, gamePaused: true)
        
        
        if typeOfGame.isEqualToString("classic") {
            tUp.stopCountingUp()
        } else if typeOfGame.isEqualToString("timed") {
            tDown.stopCountingDown()
        }
    }
    public func unpause() {
        gamePaused = false
        goToUnpause = false
        goToRestart = false
        goToQuit = false
        
        if typeOfGame.isEqualToString("classic") {
            tUp.startCountingUp()
        } else if typeOfGame.isEqualToString("timed") {
            tDown.startCountingDown()
        }
        
        tvTile.shouldAnimateWhenPaused(s1, second: s2, third: s3, fourth: s4, fifth: s5, sixth: s6, seventh: s7, eigth: s8, ninth: s9, tenth: s10, eleventh: s11, twelth: s12, thirteenth: s13, fourteenth: s14, fifteenth: s15, gamePaused: false)
        
        UIView.animateWithDuration(0.28) { () -> Void in
            self.contView.alpha = 0
        }
        
        self.pauseButton.alpha = 1
        self.pauseButton.userInteractionEnabled = true
    }
    public func restart() {
        goToUnpause = false
        goToRestart = false
        goToQuit = false
        
        if typeOfGame.isEqualToString("classic") {
            tUp.reset()
        } else if typeOfGame.isEqualToString("timed") {
            if difficulty.isEqualToString("easy") {
                tDown.minutes = 5
                tDown.seconds = 0
                tDown.setTotalSeconds(300)
                tDown.reset()
            } else if difficulty.isEqualToString("medium") {
                tDown.minutes = 3
                tDown.seconds = 0
                tDown.setTotalSeconds(180)
                tDown.reset()
            } else if difficulty.isEqualToString("hard") {
                tDown.minutes = 1
                tDown.seconds = 30
                tDown.setTotalSeconds(90)
                tDown.reset()
            }
        }
        self.unpause()
        randomizeTiles()
    }
    public func quit(){
        goToUnpause = false
        goToRestart = false
        goToQuit = false
        
        if typeOfGame.isEqualToString("classic") {
            tUp.stopCountingUp()
        } else if typeOfGame.isEqualToString("timed") {
            tDown.stopCountingDown()
        }
        
        difficulty = nil
        typeOfGame = nil
        updateTimer.invalidate()
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let h: Home = sb.instantiateViewControllerWithIdentifier("HomeVC") as! Home
        self.presentViewController(h, animated: true, completion: nil)
        
        gamePaused = false
        tvTile.animateOnQuit(s1, second: s2, third: s3, fourth: s4, fifth: s5, sixth: s6, seventh: s7, eigth: s8, ninth: s9, tenth: s10, eleventh: s11, twelth: s12, thirteenth: s13, fourteenth: s14, fifteenth: s15)
    }
    
    //MARK: Change the images on each tile
    
    @IBAction func changeSpaceOne(sender: UITapGestureRecognizer) {
        
        tvTile.changeFour(s1, second: s2, third: s3, fourth: s4)
        
        if difficulty.isEqualToString("easy") {
            tvTile.tileLimitFour(&s1Rand, second: &s2Rand, third: &s3Rand, fourth: &s4Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitFour(&s1Rand, second: &s2Rand, third: &s3Rand, fourth: &s4Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitFour(&s1Rand, second: &s2Rand, third: &s3Rand, fourth: &s4Rand, lastShape: 4)
        }
        
    }
    @IBAction func changeSpaceTwo(sender: UITapGestureRecognizer) {
        
        tvTile.changeFour(s1, second: s2, third: s4, fourth: s5)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitFour(&s1Rand, second: &s2Rand, third: &s4Rand, fourth: &s5Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitFour(&s1Rand, second: &s2Rand, third: &s4Rand, fourth: &s5Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitFour(&s1Rand, second: &s2Rand, third: &s4Rand, fourth: &s5Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceThree(sender: UITapGestureRecognizer) {
        
        tvTile.changeFour(s1, second: s3, third: s4, fourth: s6)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitFour(&s1Rand, second: &s3Rand, third: &s4Rand, fourth: &s6Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitFour(&s1Rand, second: &s3Rand, third: &s4Rand, fourth: &s6Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitFour(&s1Rand, second: &s3Rand, third: &s4Rand, fourth: &s6Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceFour(sender: UITapGestureRecognizer) {
        
        tvTile.changeSeven(s1, second: s2, third: s3, fourth: s4, fifth: s5, sixth: s6, seventh: s7)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitSeven(&s1Rand, second: &s2Rand, third: &s3Rand, fourth: &s4Rand, fifth: &s5Rand, sixth: &s6Rand, seventh: &s7Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitSeven(&s1Rand, second: &s2Rand, third: &s3Rand, fourth: &s4Rand, fifth: &s5Rand, sixth: &s6Rand, seventh: &s7Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitSeven(&s1Rand, second: &s2Rand, third: &s3Rand, fourth: &s4Rand, fifth: &s5Rand, sixth: &s6Rand, seventh: &s7Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceFive(sender: UITapGestureRecognizer) {
        
        tvTile.changeFour(s2, second: s4, third: s5, fourth: s7)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitFour(&s2Rand, second: &s4Rand, third: &s5Rand, fourth: &s7Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitFour(&s2Rand, second: &s4Rand, third: &s5Rand, fourth: &s7Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitFour(&s2Rand, second: &s4Rand, third: &s5Rand, fourth: &s7Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceSix(sender: UITapGestureRecognizer) {
        
        tvTile.changeSix(s6, second: s3, third: s4, fourth: s7, fifth: s8, sixth: s9)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitSix(&s6Rand, second: &s3Rand, third: &s4Rand, fourth: &s7Rand, fifth: &s8Rand, sixth: &s9Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitSix(&s6Rand, second: &s3Rand, third: &s4Rand, fourth: &s7Rand, fifth: &s8Rand, sixth: &s9Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitSix(&s6Rand, second: &s3Rand, third: &s4Rand, fourth: &s7Rand, fifth: &s8Rand, sixth: &s9Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceSeven(sender: UITapGestureRecognizer) {
        
        tvTile.changeSix(s4, second: s5, third: s6, fourth: s7, fifth: s9, sixth: s10)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitSix(&s4Rand, second: &s5Rand, third: &s6Rand, fourth: &s7Rand, fifth: &s9Rand, sixth: &s10Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitSix(&s4Rand, second: &s5Rand, third: &s6Rand, fourth: &s7Rand, fifth: &s9Rand, sixth: &s10Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitSix(&s4Rand, second: &s5Rand, third: &s6Rand, fourth: &s7Rand, fifth: &s9Rand, sixth: &s10Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceEight(sender: UITapGestureRecognizer) {
        
        tvTile.changeFour(s8, second: s6, third: s9, fourth: s11)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitFour(&s8Rand, second: &s6Rand, third: &s9Rand, fourth: &s11Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitFour(&s8Rand, second: &s6Rand, third: &s9Rand, fourth: &s11Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitFour(&s8Rand, second: &s6Rand, third: &s9Rand, fourth: &s11Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceNine(sender: UITapGestureRecognizer) {
        
        tvTile.changeSeven(s9, second: s6, third: s7, fourth: s8, fifth: s10, sixth: s11, seventh: s12)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitSeven(&s9Rand, second: &s6Rand, third: &s7Rand, fourth: &s8Rand, fifth: &s10Rand, sixth: &s11Rand, seventh: &s12Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitSeven(&s9Rand, second: &s6Rand, third: &s7Rand, fourth: &s8Rand, fifth: &s10Rand, sixth: &s11Rand, seventh: &s12Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitSeven(&s9Rand, second: &s6Rand, third: &s7Rand, fourth: &s8Rand, fifth: &s10Rand, sixth: &s11Rand, seventh: &s12Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceTen(sender: UITapGestureRecognizer) {
        
        tvTile.changeFour(s10, second: s9, third: s7, fourth: s12)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitFour(&s10Rand, second: &s9Rand, third: &s7Rand, fourth: &s12Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitFour(&s10Rand, second: &s9Rand, third: &s7Rand, fourth: &s12Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitFour(&s10Rand, second: &s9Rand, third: &s7Rand, fourth: &s12Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceEleven(sender: UITapGestureRecognizer) {
        
        tvTile.changeSix(s11, second: s8, third: s9, fourth: s12, fifth: s13, sixth: s14)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitSix(&s11Rand, second: &s8Rand, third: &s9Rand, fourth: &s12Rand, fifth: &s13Rand, sixth: &s14Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitSix(&s11Rand, second: &s8Rand, third: &s9Rand, fourth: &s12Rand, fifth: &s13Rand, sixth: &s14Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitSix(&s11Rand, second: &s8Rand, third: &s9Rand, fourth: &s12Rand, fifth: &s13Rand, sixth: &s14Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceTwelve(sender: UITapGestureRecognizer) {
        
        tvTile.changeSix(s12, second: s11, third: s10, fourth: s9, fifth: s14, sixth: s15)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitSix(&s12Rand, second: &s11Rand, third: &s10Rand, fourth: &s9Rand, fifth: &s14Rand, sixth: &s15Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitSix(&s12Rand, second: &s11Rand, third: &s10Rand, fourth: &s9Rand, fifth: &s14Rand, sixth: &s15Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitSix(&s12Rand, second: &s11Rand, third: &s10Rand, fourth: &s9Rand, fifth: &s14Rand, sixth: &s15Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceThirteen(sender: UITapGestureRecognizer) {
        
        tvTile.changeThree(s13, second: s14, third: s11)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitThree(&s13Rand, second: &s14Rand, third: &s11Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitThree(&s13Rand, second: &s14Rand, third: &s11Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitThree(&s13Rand, second: &s14Rand, third: &s11Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceFourteen(sender: UITapGestureRecognizer) {
        
        tvTile.changeFive(s14, second: s13, third: s15, fourth: s11, fifth: s12)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitFive(&s14Rand, second: &s13Rand, third: &s15Rand, fourth: &s11Rand, fifth: &s12Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitFive(&s14Rand, second: &s13Rand, third: &s15Rand, fourth: &s11Rand, fifth: &s12Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitFive(&s14Rand, second: &s13Rand, third: &s15Rand, fourth: &s11Rand, fifth: &s12Rand, lastShape: 4)
        }
    }
    @IBAction func changeSpaceFifteen(sender: UITapGestureRecognizer) {
        
        tvTile.changeThree(s15, second: s14, third: s12)
        
        if difficulty.isEqualToString("easy"){
            tvTile.tileLimitThree(&s15Rand, second: &s14Rand, third: &s12Rand, lastShape: 2)
        } else if difficulty.isEqualToString("medium"){
            tvTile.tileLimitThree(&s15Rand, second: &s14Rand, third: &s12Rand, lastShape: 3)
        } else if difficulty.isEqualToString("hard"){
            tvTile.tileLimitThree(&s15Rand, second: &s14Rand, third: &s12Rand, lastShape: 4)
        }
    }
    
    
    
    
    
    
}