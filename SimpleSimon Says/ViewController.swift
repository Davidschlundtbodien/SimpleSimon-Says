//
//  ViewController.swift
//  SimpleSimon Says
//
//  Created by David Schlundt-Bodien on 5/31/20.
//  Copyright © 2020 David Schlundt-Bodien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var gameStatus: UILabel!

    var isWatching = true {
        didSet {
            if isWatching {
                gameStatus.text = "WATCH"
            } else {
                gameStatus.text = "REPEAT"
            }
        }
    }
    var sequence = [UIButton]()
    var sequenceIndex = 0
    
    // Adds next color to the sequence
    func addToSequence() {
        let colors: [UIButton] = [buttonOne, buttonTwo, buttonThree, buttonFour]
        sequence.append(colors.randomElement()!)
        
        
        sequenceIndex = 0
        isWatching = true
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1) {
            self.playNextSequenceItem()
        }
    }
    // Plays sequence for the player to watch
    func playNextSequenceItem() {
        guard sequenceIndex < sequence.count else {
            isWatching = false
            sequenceIndex = 0
            return
        }
        
        let button = sequence[sequenceIndex]
        sequenceIndex += 1
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
            button.setTitle("*", for: .normal)
            
            DispatchQueue.main.asyncAfter(deadline: . now() + 0.5) {
                button.setTitle("", for: .normal)
                self?.playNextSequenceItem()
            }
            
        }
    }
    //Player Control
    func makeMove(_ color: UIButton) {
        guard isWatching == false else {
            return
        }
        
        if sequence[sequenceIndex] == color {
            sequenceIndex += 1
            
            if sequenceIndex == sequence.count {
                addToSequence()
            }
        } else {
            gameStatus.text = "Game Over! You scored \(sequence.count - 1)."
            
        }
    }
    //Starts Game
    @IBAction func startButton(_ sender: Any) {
        sequence.removeAll()
        addToSequence()
    }
    //Player Interaction
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        makeMove(buttonOne)
    }
    
    @IBAction func buttonTwoTapped(_ sender: UIButton) {
        makeMove(buttonTwo)
    }
    
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        makeMove(buttonThree)
    }
    
    @IBAction func buttonFourTapped(_ sender: UIButton) {
        makeMove(buttonFour)
    }
    


    
}


