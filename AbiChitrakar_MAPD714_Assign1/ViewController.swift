//  ViewController.swift
//  AbiChitrakar_MAPD714_Assign1
//  Created by Abi Chitrakar on 2023-09-19.
//  StudentID: 301369773
//  Last Modified Date: 24 September, 2023
//  App-Description: This app is a simple interest  calculator which can calculate the Interest and the Total Amount based upon the Principle, Time and Rate of Interest.
//  Version: 1.0.0

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var totalAmountResult: UILabel!
    @IBOutlet weak var interestResult: UILabel!
    @IBOutlet weak var rateField: UITextField!
    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var principalField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButton(_ sender: Any) {
        if let principalText = principalField.text, let rateText = rateField.text, let timeText = timeField.text { // Checking if the valid inputs are provided or not
            if let principal = Double(principalText), let rate = Double(rateText), let time = Double(timeText) { // Converting input strings to numeric(Double) values
                let simpleInterest = (principal * rate * time) / 100.0 // Calculating the Simple Interest
                print(type(of: simpleInterest))
                let totalAmount = principal + simpleInterest // Calculating the Total Amount
                interestResult.text = String(format: "%.2f", simpleInterest) // Formatted with two decimal places.
                totalAmountResult.text = String(format: "%.2f", totalAmount)
            } else {
                //  Show error message for invalid input
                interestResult.text = "Check Your Inputs!"
                totalAmountResult.text = "Check Your Inputs!"
            }
        }
    }

    @IBAction func clearButton(_ sender: Any) {
        principalField.text = ""
        rateField.text = ""
        timeField.text = ""
        interestResult.text = " "
        totalAmountResult.text = ""
    }
}


