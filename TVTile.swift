//
//  TVTileView.swift
//  TVTile
//
//  Created by Adeola Uthman on 7/19/15.
//  Copyright (c) 2015 Adeola Uthman. All rights reserved.
//

import UIKit
import Foundation

public class TileView: NSObject {
    
    //Initializer
    public override init () {
        
    }
    
    
    //MARK: Animate the tiles based on which tile is tapped
    
    public func changeThree(first: UIImageView,second: UIImageView,third: UIImageView){
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: first, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: second, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: third, cache: false)
        UIImageView.commitAnimations()
    }
    
    public func changeFour(first: UIImageView,second: UIImageView,third: UIImageView,fourth: UIImageView){
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: first, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: second, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: third, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fourth, cache: false)
        UIImageView.commitAnimations()
    }
    
    public func changeFive(first: UIImageView,second: UIImageView,third: UIImageView,fourth: UIImageView,fifth: UIImageView){
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: first, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: second, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: third, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fourth, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fifth, cache: false)
        UIImageView.commitAnimations()
    }
    
    public func changeSix(first: UIImageView,second: UIImageView,third: UIImageView,fourth: UIImageView,fifth: UIImageView,sixth:UIImageView){
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: first, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: second, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: third, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fourth, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fifth, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: sixth, cache: false)
        UIImageView.commitAnimations()
    }
    
    public func changeSeven(first: UIImageView,second: UIImageView,third: UIImageView,fourth: UIImageView,fifth: UIImageView,sixth:UIImageView,seventh: UIImageView){
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: first, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: second, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: third, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fourth, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: fifth, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: sixth, cache: false)
        UIImageView.commitAnimations()
        
        UIImageView.beginAnimations(nil, context: nil)
        UIImageView.setAnimationCurve(UIViewAnimationCurve.Linear)
        UIImageView.setAnimationDuration(0.28)
        UIImageView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: seventh, cache: false)
        UIImageView.commitAnimations()
    }
    
    
    // MARK: Change the tiles to the next shape and color based on the current ones.
    public func tileLimitThree(inout first: Int, inout second: Int, inout third: Int, lastShape: Int)
    {
        if(first < lastShape) {
            first++
        } else {
            first = 0
        }
        
        if(second < lastShape) {
            second++
        } else {
            second = 0
        }
        
        if(third < lastShape) {
            third++
        } else {
            third = 0
        }
    }
    public func tileLimitFour(inout first: Int, inout second: Int, inout third: Int, inout fourth: Int, lastShape: Int)
    {
        if(first < lastShape) {
            first++
        } else {
            first = 0
        }
        
        if(second < lastShape) {
            second++
        } else {
            second = 0
        }
        
        if(third < lastShape) {
            third++
        } else {
            third = 0
        }
        
        if(fourth < lastShape) {
            fourth++
        } else {
            fourth = 0
        }
    }
    public func tileLimitFive(inout first: Int, inout second: Int, inout third: Int, inout fourth: Int, inout fifth: Int, lastShape: Int)
    {
        if(first < lastShape) {
            first++
        } else {
            first = 0
        }
        
        if(second < lastShape) {
            second++
        } else {
            second = 0
        }
        
        if(third < lastShape) {
            third++
        } else {
            third = 0
        }
        
        if(fourth < lastShape) {
            fourth++
        } else {
            fourth = 0
        }
        
        if(fifth < lastShape) {
            fifth++
        } else {
            fifth = 0
        }
    }
    public func tileLimitSix(inout first: Int, inout second: Int, inout third: Int, inout fourth: Int, inout fifth: Int, inout sixth: Int, lastShape: Int)
    {
        if(first < lastShape) {
            first++
        } else {
            first = 0
        }
        
        if(second < lastShape) {
            second++
        } else {
            second = 0
        }
        
        if(third < lastShape) {
            third++
        } else {
            third = 0
        }
        
        if(fourth < lastShape) {
            fourth++
        } else {
            fourth = 0
        }
        
        if(fifth < lastShape) {
            fifth++
        } else {
            fifth = 0
        }
        
        if(sixth < lastShape) {
            sixth++
        } else {
            sixth = 0
        }
    }
    public func tileLimitSeven(inout first: Int, inout second: Int, inout third: Int, inout fourth: Int, inout fifth: Int, inout sixth: Int, inout seventh: Int, lastShape: Int)
    {
        if(first < lastShape) {
            first++
        } else {
            first = 0
        }
        
        if(second < lastShape) {
            second++
        } else {
            second = 0
        }
        
        if(third < lastShape) {
            third++
        } else {
            third = 0
        }
        
        if(fourth < lastShape) {
            fourth++
        } else {
            fourth = 0
        }
        
        if(fifth < lastShape) {
            fifth++
        } else {
            fifth = 0
        }
        
        if(sixth < lastShape) {
            sixth++
        } else {
            sixth = 0
        }
        
        if(seventh < lastShape) {
            seventh++
        } else {
            seventh = 0
        }
    }
    
    
    //MARK: Animate the elements in the viewcontroller for the pause menu
    
    public func shouldAnimateWhenPaused(first: UIImageView,second: UIImageView,third: UIImageView,fourth: UIImageView,fifth: UIImageView,sixth:UIImageView,seventh: UIImageView,eigth: UIImageView, ninth: UIImageView, tenth: UIImageView, eleventh: UIImageView, twelth: UIImageView, thirteenth: UIImageView, fourteenth: UIImageView,fifteenth: UIImageView, gamePaused: Bool){
        
        if gamePaused == true {
            UIView.animateWithDuration(0.28, animations: { () -> Void in
                first.frame.origin.x -= 750
                third.frame.origin.x -= 750
                sixth.frame.origin.x -= 750
                eigth.frame.origin.x -= 750
                eleventh.frame.origin.x -= 750
                thirteenth.frame.origin.x -= 750
                ninth.frame.origin.x -= 750
                
                second.frame.origin.x += 750
                fifth.frame.origin.x += 750
                seventh.frame.origin.x += 750
                tenth.frame.origin.x += 750
                twelth.frame.origin.x += 750
                fifteenth.frame.origin.x += 750
                fourth.frame.origin.x += 750
                fourteenth.frame.origin.x += 750
            })
            
            //Disable user interaction
            first.userInteractionEnabled = false
            third.userInteractionEnabled = false
            sixth.userInteractionEnabled = false
            eigth.userInteractionEnabled = false
            eleventh.userInteractionEnabled = false
            thirteenth.userInteractionEnabled = false
            second.userInteractionEnabled = false
            fifth.userInteractionEnabled = false
            seventh.userInteractionEnabled = false
            tenth.userInteractionEnabled = false
            twelth.userInteractionEnabled = false
            fifteenth.userInteractionEnabled = false
            ninth.userInteractionEnabled = false
            fourth.userInteractionEnabled = false
            fourteenth.userInteractionEnabled = false
        } else {
            UIView.animateWithDuration(0.28, animations: { () -> Void in
                first.frame.origin.x += 750
                third.frame.origin.x += 750
                sixth.frame.origin.x += 750
                eigth.frame.origin.x += 750
                eleventh.frame.origin.x += 750
                thirteenth.frame.origin.x += 750
                ninth.frame.origin.x += 750
                
                second.frame.origin.x -= 750
                fifth.frame.origin.x -= 750
                seventh.frame.origin.x -= 750
                tenth.frame.origin.x -= 750
                twelth.frame.origin.x -= 750
                fifteenth.frame.origin.x -= 750
                fourth.frame.origin.x -= 750
                fourteenth.frame.origin.x -= 750
            })
            
            //Enable user interaction
            first.userInteractionEnabled = true
            third.userInteractionEnabled = true
            sixth.userInteractionEnabled = true
            eigth.userInteractionEnabled = true
            eleventh.userInteractionEnabled = true
            thirteenth.userInteractionEnabled = true
            second.userInteractionEnabled = true
            fifth.userInteractionEnabled = true
            seventh.userInteractionEnabled = true
            tenth.userInteractionEnabled = true
            twelth.userInteractionEnabled = true
            fifteenth.userInteractionEnabled = true
            ninth.userInteractionEnabled = true
            fourth.userInteractionEnabled = true
            fourteenth.userInteractionEnabled = true
        }
    }
    
    public func animateOnQuit(first: UIImageView,second: UIImageView,third: UIImageView,fourth: UIImageView,fifth: UIImageView,sixth:UIImageView,seventh: UIImageView,eigth: UIImageView, ninth: UIImageView, tenth: UIImageView, eleventh: UIImageView, twelth: UIImageView, thirteenth: UIImageView, fourteenth: UIImageView,fifteenth: UIImageView){
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            first.frame.origin.x += 250
            third.frame.origin.x += 250
            sixth.frame.origin.x += 250
            eigth.frame.origin.x += 250
            eleventh.frame.origin.x += 250
            thirteenth.frame.origin.x += 250
            ninth.frame.origin.x += 250
            
            second.frame.origin.x -= 250
            fifth.frame.origin.x -= 250
            seventh.frame.origin.x -= 250
            tenth.frame.origin.x -= 250
            twelth.frame.origin.x -= 250
            fifteenth.frame.origin.x -= 250
            fourth.frame.origin.x -= 250
            fourteenth.frame.origin.x -= 250
        })
        
        //Enable user interaction
        first.userInteractionEnabled = true
        third.userInteractionEnabled = true
        sixth.userInteractionEnabled = true
        eigth.userInteractionEnabled = true
        eleventh.userInteractionEnabled = true
        thirteenth.userInteractionEnabled = true
        second.userInteractionEnabled = true
        fifth.userInteractionEnabled = true
        seventh.userInteractionEnabled = true
        tenth.userInteractionEnabled = true
        twelth.userInteractionEnabled = true
        fifteenth.userInteractionEnabled = true
        ninth.userInteractionEnabled = true
        fourth.userInteractionEnabled = true
        fourteenth.userInteractionEnabled = true
    }
}