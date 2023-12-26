//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    // var for timer
    var timer: Timer?
    // var for audio player
    var player: AVAudioPlayer?
    
    var totalTime = 0
    var secondsPassed = 0
    
   let eggTimes = ["Soft":3, "Medium": 5, "Hard": 7]
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        progressView.progress = Float(0)
    }
    

    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
            return }
        
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func hardnessPressed(_ sender: UIButton) {
        timer?.invalidate()
        
        progressView.progress = 0.0
        secondsPassed = 0
        
        let hardness  = sender.currentTitle!;
        totalTime = eggTimes[hardness]!
        titleLable.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCallback), userInfo: nil, repeats: true)
    }
    
    
    @objc func timerCallback (){
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressView.progress = Float(secondsPassed) / Float(totalTime)
        }else {
            timer?.invalidate()
            playSound()
            titleLable.text = "Timer Done!"
        }
    }
    

    
}
