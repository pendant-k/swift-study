//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    final var dices : [String] = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let randNum1 : Int = Int.random(in: 0...5)
        
        let randNum2 : Int = Int.random(in: 0...5)
        
        //        print("button Tapped")
        diceImageView1.image = UIImage(named: dices[randNum1])
        diceImageView2.image = UIImage(named: dices[randNum2])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

