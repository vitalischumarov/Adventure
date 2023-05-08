//
//  ViewController.swift
//  Adventure
//
//  Created by Vitali Schumarov on 08.05.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    var story = StoryModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = story.stories[story.storyNumber].title
        btn1.setTitle(story.stories[story.storyNumber].choice1, for: .normal)
        btn2.setTitle(story.stories[story.storyNumber].choice2, for: .normal)
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        if (sender.tag%2 == 0) {
            story.updateNextQuestion(selected: story.stories[story.storyNumber].choice1Destination)
            textLabel.text = story.stories[story.storyNumber].title
            btn1.setTitle(story.stories[story.storyNumber].choice1, for: .normal)
            btn2.setTitle(story.stories[story.storyNumber].choice2, for: .normal)
            if (story.checkGameStatus()) {
                btn1.isEnabled = false
                btn2.isEnabled = false
            }
        } else {
            story.updateNextQuestion(selected: story.stories[story.storyNumber].choice1Destination)
            textLabel.text = story.stories[story.storyNumber].title
            btn1.setTitle(story.stories[story.storyNumber].choice1, for: .normal)
            btn2.setTitle(story.stories[story.storyNumber].choice2, for: .normal)
            if (story.checkGameStatus()) {
                btn1.isEnabled = false
                btn2.isEnabled = false
            }
        }
    }
    

}

