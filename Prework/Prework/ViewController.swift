//
//  ViewController.swift
//  Prework
//
//  Created by Justin Bahadur on 9/30/21.
//

import UIKit

class ViewController: UIViewController {
    
    //settings object created
    
//let settings = SettingsViewController()
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTip(_ sender: UISegmentedControl) {
        
        var billTotal = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = billTotal * tipPercentage[tipControl.selectedSegmentIndex]
        let total = billTotal + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    


}

