//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Donghan Kim on 1/5/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    // Save bmi value on this val
    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        var adviceValue = "You are normal, keep going!"
        var colorValue = UIColor.green

        if bmiValue < 18.5 {
            adviceValue = "You have to eat more snacks!"
            colorValue = UIColor.systemBlue
        } else if bmiValue > 24.9 {
            adviceValue = "You have to stop to eat more snacks!"
            colorValue = UIColor.orange
        }
        bmi = BMI(value: bmiValue, advice: adviceValue, color: colorValue)
    }

    func getBMI() -> BMI? {
        return bmi
    }

    func getBMIValue() -> String {
        return String(format: "%.2f", bmi?.value ?? "0.0")
    }
}
