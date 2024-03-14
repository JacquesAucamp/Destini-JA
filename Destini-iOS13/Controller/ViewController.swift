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
		
		storyLabel.contentMode = .scaleToFill
		storyLabel.numberOfLines = 0
		
		UpdateUI()
	}
	
	@IBAction func choiceMade(_ sender: UIButton) {
		let userAnswer = sender.currentTitle!
		print(userAnswer)
		
		storyBrain.nextStory(userAnswer)
		
		UpdateUI()
	}
	
	func UpdateUI() {
		storyLabel.text = storyBrain.getStoryLabelText()
		choice1Button.setTitle(storyBrain.getChoice1Button(), for: .normal)
		choice2Button.setTitle(storyBrain.getChoice2Button(), for: .normal)
	}
	



}

