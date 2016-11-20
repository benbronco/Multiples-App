//
//  ViewController.swift
//  Multiples
//
//  Created by Benjamin Pena on 11/19/16.
//  Copyright © 2016 Pena Creations. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let maxMultiple = 0
    var equation = 0
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var pickNumber: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func playButtonPressed(sender: UIButton!) {
        if pickNumber.text != nil && pickNumber.text != "" {
            pickNumber.isHidden = true
            playButton.isHidden = true
            logo.isHidden = true
            
            addButton.isHidden = false
            label.isHidden = false
            
            updateMultiple()
        }
    }
    
    @IBAction func addPressed(sender: UIButton!){
        updateMultiple()
        restartGame()
    }
    
    func updateMultiple() {
        let pickInt = Int(pickNumber.text!)!
        let total = equation + pickInt
        label.text = "\(equation) + \(pickNumber.text) = \(total)"
        equation = total
    }
    
    func gameOver() -> Bool {
        if equation >= 50 {
            return true
        } else {
            return false
        }
    }
        
        func restartGame() {
            if gameOver() {
                pickNumber.isHidden = false
                playButton.isHidden = false
                logo.isHidden = false
                
                addButton.isHidden = true
                label.isHidden = true
                pickNumber.text = ""
                equation = 0
            }
        }
    
    
}

