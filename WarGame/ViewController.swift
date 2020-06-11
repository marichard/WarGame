//
//  ViewController.swift
//  WarGame
//
//  Created by Marcus Richard on 6/6/20.
//  Copyright © 2020 Marcus Richard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var playerCard: UIImageView!
	@IBOutlet var cpuCard: UIImageView!
	@IBOutlet var playerScoreLbl: UILabel!
	@IBOutlet var cpuScoreLbl: UILabel!
	
	var playerScore = 0
	var cpuScore = 0
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func dealButtonTapped(_ sender: UIButton) {
		// randomize numbers
		let playerNumber = Int.random(in: 2...14)
		let cpuNumber = Int.random(in: 2...14)
		
		// update cards
		playerCard.image = UIImage(named: "card\(playerNumber)")
		cpuCard.image = UIImage(named: "card\(cpuNumber)")
		
		// update score
		if playerNumber > cpuNumber {
			// player wins
			
			playerScore += 1
			
			playerScoreLbl.text = String(playerScore)
			
		} else if playerNumber < cpuNumber {
			// cpu wins
			
			cpuScore += 1
			
			cpuScoreLbl.text = String(cpuScore)
		} else {
			// tie
		}
	}
	
}

