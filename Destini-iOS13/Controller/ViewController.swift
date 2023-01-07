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
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextRoute(route: sender.tag)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTitle()
        
        choice1Button.setTitle(storyBrain.getChoice1Title(), for: .normal)
        choice1Button.tag = storyBrain.getChoice1Destination()
        
        choice2Button.setTitle(storyBrain.getChoice2Title(), for: .normal)
        choice2Button.tag = storyBrain.getChoice2Destination()
        
    }
}

