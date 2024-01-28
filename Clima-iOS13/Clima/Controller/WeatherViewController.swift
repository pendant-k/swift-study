//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

// UITextFieldDelegate는 protocol임
// The Delegate Pattern
// protocol을 활용함 -> UITextFieldDelegate
// Delegate를 사용하는 사용자 정의 Controller에서 Apple이 작성해둔 UITextField를 자유롭게 handling할 수 있다.
class WeatherViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var conditionImageView: UIImageView!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var searchTextField: UITextField!

    // init weather manager
    var weatherManager = WeatherManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // delegate 설정을 통해서 viewController가 typing event를 listening할 수 있음
        // UITextField delegate로 WeatherViewController 정의(UITextFieldDelegate)
        // Delegate 패턴을 적용함으로써 UITextField는 변화하지 않는다.(재사용 가능)
        searchTextField.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }

    // ViewController에 UITextFieldDelegate를 함께 사용하면 활용할 수 있는 매서드들이다.

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
    }
}

// Protocol
// 어떠한 객체에 대한 생김새를 약속하는 것
// blueprint를 지정해두는 것임
