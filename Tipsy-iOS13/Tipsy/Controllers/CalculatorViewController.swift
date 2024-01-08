//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Donghan Kim on 1/8/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    var selectedTip: Float = 1.0
    var splitedTO: Int = 2
    var calculated: Float = 0.0

    func resetUI() {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }

    @IBOutlet var tenPctButton: UIButton!
    @IBOutlet var zeroPctButton: UIButton!
    @IBOutlet var twentyPctButton: UIButton!
    @IBOutlet var billTextField: UITextField!
    @IBOutlet var splitNumberLabel: UILabel!

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        resetUI()
        let pressedTitle = sender.titleLabel!.text!
        switch pressedTitle {
        case "0%":
            zeroPctButton.isSelected = true
            selectedTip = 0.0
        case "10%":
            tenPctButton.isSelected = true
            selectedTip = 1.0
        case "20%":
            twentyPctButton.isSelected = true
            selectedTip = 2.0
        default:
            print("error")
        }
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        splitedTO = Int(sender.value)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let userInput = Float(billTextField.text!)!

        calculated = (userInput + (userInput * selectedTip)) / Float(splitedTO)

        performSegue(withIdentifier: "goToResults", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        resetUI()

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var returnText = ""
        switch selectedTip {
        case 0.0:
            returnText = "0%"
        case 1.0:
            returnText = "10%"
        case 2.0:
            returnText = "20%"
        default:
            returnText = "0%"
        }

        if segue.identifier == "goToResults" {
            print("it works")
            let destinationVC = segue.destination as! ResultsViewController

            destinationVC.settingsText = "Split between \(splitedTO) people, with \(returnText)"
            destinationVC.totalText = String(format: "%.2f", calculated)
        }
    }
}
