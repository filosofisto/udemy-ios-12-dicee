//
//  ViewController.swift
//  Dicee
//
//  Created by Eduardo Ribeiro da Silva on 23/06/19.
//  Copyright © 2019 Eduardo Ribeiro da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 1 ... 6)
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        randomDiceIndex2 = Int.random(in: 1 ... 6)
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
}

