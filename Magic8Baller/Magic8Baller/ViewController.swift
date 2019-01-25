//
//  ViewController.swift
//  Magic8Baller
//
//  Created by Hayk Karapetyan on 2019-01-24.
//  Copyright © 2019 Hayk Karapetyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var ballView: UIImageView!
    
    @IBAction func ballButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
        
    }
    
    func updateBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        
        ballView.image = UIImage(named: ballArray[randomBallNumber])
    }

}

