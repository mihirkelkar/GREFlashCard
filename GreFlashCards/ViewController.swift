//
//  ViewController.swift
//  GreFlashCards
//
//  Created by Mihir Kelkar on 8/9/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

var wrongScore = 0
var rightScore = 0
var count = 0

var displayedWord = ""
var displayIndex = 0
var wrongwords: [String] = []

class ViewController: UIViewController {
    
    @IBOutlet weak var gotButton: UIButton!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var missedButton: UIButton!
    @IBOutlet weak var redScore: UILabel!
    @IBOutlet weak var greenScore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Changinf the corner radius of a UILabel
        wordLabel.layer.cornerRadius = 10.0
        //Now I am going to add a frame to either buttons. 
        //Both buttons in this view will now have 
        //frames
        missedButton.layer.borderColor = CGColorCreate(nil,nil)
        missedButton.layer.borderWidth = 1.0
        missedButton.layer.cornerRadius = 10.0
        gotButton.layer.borderColor = CGColorCreate(nil,nil)
        gotButton.layer.borderWidth = 1.0
        gotButton.layer.cornerRadius = 10.0
        redScore.text = "\(wrongScore)"
        greenScore.text = "\(rightScore)"
        if count == 0{
        displayIndex = Int(arc4random()) % words.count
        displayedWord = words[displayIndex]
        wordLabel.text = displayedWord
        count++
        }
        else{
            wordLabel.text = displayedWord
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func swipeRight(sender: AnyObject) {
        displayIndex = Int(arc4random()) % words.count
        displayedWord = words[displayIndex]
        wordLabel.text = displayedWord
    }
    
    @IBAction func swipeLeft(sender: AnyObject) {
        displayIndex = Int(arc4random()) % words.count
        displayedWord = words[displayIndex]
        wordLabel.text = displayedWord
    }
   
    @IBAction func wrong(sender: AnyObject) {
        wrongScore += 1
        redScore.text = "\(wrongScore)"
        wrongwords.append(displayedWord)
    }
    
    @IBAction func right(sender: AnyObject) {
        rightScore += 1
        greenScore.text = "\(rightScore)"
    }
    
    
}

