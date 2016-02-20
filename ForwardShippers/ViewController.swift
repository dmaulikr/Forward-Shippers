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
    
    //Outlets
    @IBOutlet weak var WeightInput: UITextField!
    @IBOutlet weak var SubmitBtn: UIButton!
    @IBOutlet weak var QuoteLbl: UILabel!
    
    //Properties
   // var weight: Double = 0.0
 //   var aramexQuote: Double = 0.0
    
    //functions
    @IBAction func SubmitBtnAction(sender: AnyObject) {
        //check for weight value
        if WeightInput.text != nil && WeightInput.text != "" {
            let weight = Double(WeightInput.text!)!
            
          let aramexQuote = aramexCalculate(weight)
            
            printQuote(weight,aramexQuote:aramexQuote)
        }
       //No weight value
        else {
            QuoteLbl.hidden = false
            QuoteLbl.text = "Please insert a weight."
        }
    }
    
    //calculate aramex
    func aramexCalculate(weight: Double)-> Double {
        let aramexQuote = weight + 1.0
        return aramexQuote
    }
    
    //print the quotes
    func printQuote (weight: Double, aramexQuote: Double) {
 
        QuoteLbl.hidden = false
        QuoteLbl.text = "To ship an item weighing \(weight) it will cost: \n something $dollars \(aramexQuote)"
    }
}

