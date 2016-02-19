//
//  ViewController.swift
//  ForwardShippers
//
//  Created by Kathleen Skinner on 2/18/16.
//  Copyright © 2016 Quick Need. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //parameters
    @IBOutlet weak var WeightInput: UITextField!
    @IBOutlet weak var SubmitBtn: UIButton!
    @IBOutlet weak var QuoteLbl: UILabel!
    
    //functions
    @IBAction func SubmitBtnAction(sender: AnyObject) {
        QuoteLbl.hidden = false
        printQuote()
    }
    
    func printQuote () {
        QuoteLbl.text = "To ship an item weighing" 
    }
    

}

