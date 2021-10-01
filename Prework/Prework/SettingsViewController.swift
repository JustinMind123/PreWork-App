//
//  SettingsViewController.swift
//  Prework
//
//  Created by Justin Bahadur on 9/30/21.
//

import UIKit


class SettingsViewController: UIViewController {
    
    //viewcontroller object created
   var backgroundColor = ".white"
   let viewController = ViewController()

    
    //outlets
    
    @IBOutlet weak var colorChange: UISegmentedControl!
    
    @IBOutlet weak var defaultSwitch: UISwitch!
    
    @IBOutlet weak var defaultTipText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func colorChangePressed(_ sender: UISegmentedControl) {
        
        // Save this data using UserDefaults then pass the backgroundColor variable to the global scope so
        // it can be used in the viewController to change the background color
        
        let backgroundColorArray = [".white", ".blue", ".red"]
        let colorchangeVariable = [0, 1, 2]
        backgroundColor = backgroundColorArray[colorChange.selectedSegmentIndex]
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
