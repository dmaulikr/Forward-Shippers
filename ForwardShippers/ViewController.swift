//
//  ViewController.swift
//  ForwardShippers
//
//  Created by Kathleen Skinner on 2/18/16.
//  Copyright © 2016 Quick Need. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var WeightInput: UITextField!
    @IBOutlet weak var SubmitBtn: UIButton!
    //@IBOutlet weak var QuoteLbl: UILabel!

    @IBAction func SubmitBtnAction(sender: AnyObject) {
        //check for weight value
        if WeightInput.text != nil && WeightInput.text != "" {
            let weight = Double(WeightInput.text!)!
            let aramexQuote = aramexCalculate(weight)
            let comgatewayQuote = comgatewayCalculate(weight)
            printQuote(weight,aramexQuote:aramexQuote, comgatewayQuote:comgatewayQuote)
        }
       //No weight value
        else {
           // QuoteLbl.hidden = false
           // QuoteLbl.text = "Please insert a weight."
        }
    }
    
    //calculate aramex shop and ship
    func aramexCalculate(weight: Double)-> Double {
        let quote = weight + 1.0
        return quote
    }
    
    //calculate comgateway
    func comgatewayCalculate(weight: Double) -> Double {
        let quote = weight + 2.5
        return quote
    }
    
    //print the quotes
    func printQuote (weight: Double, aramexQuote: Double, comgatewayQuote: Double) {
        //QuoteLbl.hidden = false
        //QuoteLbl.text = "To ship an item weighing \(weight) it will cost: \n Aramex's Shop and Ship: $\(aramexQuote) \n Comgateway: $\(comgatewayQuote)"
    }
    
    
    
    var shippersArray = ["Shop and Ship", "Fish Is Fast", "Aramex", "Comagateway", "Post A Plus MyBox", "Borderlinx"]
    let textCellIdentifier = "TextCell"
    @IBOutlet weak var tableView: UITableView!
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shippersArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier( "textCellIdentifier", forIndexPath: indexPath)
        
        cell.textLabel?.text = shippersArray[indexPath.row]
       
        //cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }
  

}

