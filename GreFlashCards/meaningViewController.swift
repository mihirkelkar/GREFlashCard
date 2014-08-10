//
//  meaningViewController.swift
//  GreFlashCards
//
//  Created by Mihir Kelkar on 8/9/14.
//  Copyright (c) 2014 Mihir Kelkar. All rights reserved.
//

import UIKit

class meaningViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var meaningView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        wordLabel.text = displayedWord
        wordLabel.layer.cornerRadius = 10.0
        meaningView.text = meanings[displayIndex]
        meaningView.font = UIFont.boldSystemFontOfSize(20)
        meaningView.textAlignment = NSTextAlignment.Center
        meaningView.textColor = UIColor.brownColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
