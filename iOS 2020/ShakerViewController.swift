//
//  ShakerViewController.swift
//  iOS 2020
//
//  Created by Christian Calderón on 02/04/20.
//  Copyright © 2020 Christian Calderón. All rights reserved.
//

import UIKit

class ShakerViewController: UIViewController {

    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceIndex: Int = 0
    
    @IBOutlet weak var imgDice: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage(){
        randomDiceIndex = Int.random(in: 0 ... 5)
        
        
        imgDice.image = UIImage(named: diceArray[randomDiceIndex])
    }

}
