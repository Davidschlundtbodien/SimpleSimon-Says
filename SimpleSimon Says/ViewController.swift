//
//  ViewController.swift
//  SimpleSimon Says
//
//  Created by David Schlundt-Bodien on 5/31/20.
//  Copyright © 2020 David Schlundt-Bodien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var roundCount: Int = 1
    var challengeArray: [Int] = []
    var playerArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var buttonOne: UIButton!
    
    
    
    @IBAction func startButton(_ sender: Any) {
        //Generate random array
        challengeArray = (1...roundCount).map{_ in Int.random(in: 1...4)}
        print(challengeArray)
        
//        buttonOne.backgroundColor = UIColor.init(displayP3Red: 13/255, green: 153/255, blue: 10/255, alpha: 0.3)
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        if playerArray == challengeArray {
            roundCount += 1
            roundCounter.text = "Round: \(roundCount)"
            playerArray = []
        } else {
            roundCounter.text = "You Lose"
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        roundCount = 1
        challengeArray = []
        playerArray = []
        roundCounter.text = "Round: \(roundCount)"
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        playerArray.append(1)
        print(playerArray)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        playerArray.append(2)
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        playerArray.append(3)
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        playerArray.append(4)
    }
    

    @IBOutlet weak var roundCounter: UILabel!
    
}


