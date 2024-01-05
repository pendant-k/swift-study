//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightLabel: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    var bmi: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight)Kg"
    }
    
    // IBOutlet을 통해서 다른 UI의 value값을 쉽게 가져올 수 있다
    @IBAction func caculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
        // present - modal 형태로 View controller를 띄우는 것
        //        present(secondVC, animated: true, completion: nil)
    }
    
    // performSegue 실행 전에 실행되는 함수
    // downcasting
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            // 실제 연결되는 ViewController를 정의해줌
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.calculatorBrain = calculatorBrain
        }
    }
}
