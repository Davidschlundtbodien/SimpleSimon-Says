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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
 
    
    
    @IBAction func startButton(_ sender: Any) {
        
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        roundCount = 1
        challengeArray = []
        
    }
    
    @IBAction func buttonOne(_ sender: Any) {
        print("1")
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        print("2")
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        print("3")
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        print("4")
    }
    

    @IBOutlet weak var roundCounter: UILabel!
    
}

