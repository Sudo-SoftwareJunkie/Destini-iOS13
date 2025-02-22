//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentStory = storyBrain.getCurrentStory()
        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }


    @IBAction func choiceButtonClicked(_ sender: UIButton) {
        var choice = 0
        
        
        if sender == choice1Button {
            choice = 1
        }
        else {
            choice = 2
        }
        
        var newStory = storyBrain.nextStory(userChoice: choice)
        updateUi(story: newStory)
    }
    
    func updateUi(story: Story) {
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }
}

