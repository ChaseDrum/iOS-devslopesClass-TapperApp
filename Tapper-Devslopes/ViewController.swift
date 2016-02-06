//
//  ViewController.swift
//  Tapper-Devslopes
//
//  Created by Chase Drum on 1/2/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables/Properties
    var MaxTaps = 0
    var currentTaps = 0
    
    //Outlets

    @IBOutlet weak var howManyTapsTxt: UITextField!
    
   
    @IBOutlet weak var logoImage2: UIImageView!
    @IBOutlet weak var playBtn2: UIButton!
    
    
    
    @IBOutlet weak var tapBtn:UIButton!
    @IBOutlet weak var tapsLbl: UILabel!

    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps++;
        //++ just means plus 1, the alternative would have been curretTaps = currentTaps + 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    
    @IBAction func playGameBtnPressed(sender:UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
        // != means not equal to, so were saying if someone has typed something in and its blank, lets not doing anything otherwise run the code
            logoImage.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
    
            MaxTaps = Int(howManyTapsTxt.text!)!
            
            
            updateTapsLbl()
        }
    }
    
    func restartGame() {
        MaxTaps = 0
        howManyTapsTxt.text = ""
        currentTaps = 0
        
        logoImage.hidden = false
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= MaxTaps {
            return true
        } else {
            return false
            }
    }

    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
        //We wrote this function to repeat from writing the same code from running repeatedly and makes it easier for us to use one point to make all modification.
    }
    
}
