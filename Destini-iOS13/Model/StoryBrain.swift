//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Kyle Jordan on 02/22/2025.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(previousIndex: 0, storyIndex: 0, choice: 0, title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(previousIndex: 0, storyIndex: 1, choice: 1, title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(previousIndex: 0, storyIndex: 2, choice: 2, title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps"),
        Story(previousIndex: 1, storyIndex: 3, choice: 1, title: "The tiger starts running at you", choice1: "Run away", choice2: "Play dead"),
        Story(previousIndex: 1, storyIndex: 4, choice: 2, title: "The tiger walks away", choice1: "Get up", choice2: "Continue Playing dead"),
        Story(previousIndex: 2, storyIndex: 5, choice: 1, title: "You open it and a trap sends a spike through your hand", choice1: "Shout for help", choice2: "Pull it out"),
        Story(previousIndex: 2, storyIndex: 6, choice: 2, title: "You find and disable the traps", choice1: "Open it", choice2: "Leave it")
    ]
    
    var currentStory = 0
    
    mutating func nextStory(userChoice: Int) -> Story {
        if let next = stories.first(where: { $0.previousIndex == currentStory && $0.choice == userChoice }) {
            currentStory = next.storyIndex // Update index to new story
           return next
       } else {
           return stories[currentStory] // No matching story, stay on the current one
       }
   }
    
    func getCurrentStory() -> Story {
        return stories[currentStory]
    }
}

