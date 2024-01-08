//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Donghan Kim on 1/8/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var totalText: String?
    var settingsText: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if totalText != nil {
            totalLabel.text = totalText
        }
        if settingsText != nil {
            settingsLabel.text = settingsText
        }

        // Do any additional setup after loading the view.
    }

    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var settingsLabel: UILabel!

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
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
