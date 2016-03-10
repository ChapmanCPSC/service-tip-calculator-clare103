//
//  ViewController.swift
//  tip-calculator
//
//  Created by David Clare on 3/9/16.
//  Copyright © 2016 David Clare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipScoreTxtField: UITextField!
    
    @IBOutlet weak var billTotalTxtField: UITextField!

    
    @IBOutlet weak var amountTippedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calculateBtn(sender: AnyObject) {
        
 
        
        if(billTotalTxtField.text != "" && tipScoreTxtField.text != "")
        {
        
        let billTotalDouble = NSString(string: billTotalTxtField.text!).doubleValue
            let tipScoreInt = NSString(string: tipScoreTxtField.text!).integerValue
            
            if(tipScoreInt != 0 && tipScoreInt < 11)
            {
        if(tipScoreTxtField.text == "1" || tipScoreTxtField.text == "2" || tipScoreTxtField.text == "3")
        {
            
            amountTippedLbl.text = String(billTotalDouble * 0.1)
        }
        else if(tipScoreTxtField.text == "4" || tipScoreTxtField.text == "5")
        {
            amountTippedLbl.text = String(billTotalDouble * 0.13)
        }
        else if(tipScoreTxtField.text == "6" || tipScoreTxtField.text == "7")
        {
            amountTippedLbl.text = String(billTotalDouble * 0.15)
        }
        else if(tipScoreTxtField.text == "8" || tipScoreTxtField.text == "9")
        {
            amountTippedLbl.text = String(billTotalDouble * 0.2)
        }
        else
        {
            amountTippedLbl.text = String(billTotalDouble * 0.25)
        }
    }
        }
        
    }
    }
    
    


