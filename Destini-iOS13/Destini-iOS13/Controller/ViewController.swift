//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.titleLabel!.text!)
        updateUI()
    }

    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        storyLabel.text = storyBrain.stories[storyBrain.currentIndex].title
        // update button title with setTitle method
        choice1Button.setTitle(storyBrain.stories[storyBrain.currentIndex].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.currentIndex].choice2, for: .normal)
    }
}
