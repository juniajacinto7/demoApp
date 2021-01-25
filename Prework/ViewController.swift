//
//  ViewController.swift
//  Prework
//
//  Created by Junia Jacinto on 1/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        //Get's bill amount from the text field input
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Get Total tip by multiplying bill amount by tip percentage
        
        tipAmountLabel.text = String(format: "$%.2f",tip)
        //Update tip amount
        totalLabel.text = String(format:"$%.2f", total)
        //update total amount
    }
    
}

