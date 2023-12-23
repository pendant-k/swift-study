//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onPressed(_ sender: UIButton) {
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
                UIView.animate(withDuration: 0.2) {
                    sender.alpha = 1.0
                }
            }
        playSound(value : sender.currentTitle!)
    }
    
    func playSound(value: String) {
        let url = Bundle.main.url(forResource: value, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    // challenge
}
