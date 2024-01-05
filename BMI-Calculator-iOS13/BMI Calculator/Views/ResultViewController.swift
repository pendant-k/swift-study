//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Donghan Kim on 1/5/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var calculatorBrain: CalculatorBrain?

    override func viewDidLoad() {
        super.viewDidLoad()

        if calculatorBrain != nil {
            bmiLabel.text = calculatorBrain!.getBMIValue()
            backgroundView.backgroundColor = calculatorBrain!.getBMI()?.color
        }
    }

    @IBOutlet var backgroundView: UIView!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var bmiLabel: UILabel!
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
