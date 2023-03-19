//
//  ViewController.swift
//  RusifApp
//
//  Created by Русиф on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var yellowCircle: UIView!
    @IBOutlet var redCircle: UIView!
    @IBOutlet var greenCircle: UIView!
    @IBOutlet var trafficLightsButton: UIButton!
    
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightsButton.layer.cornerRadius = 10
        redCircle.alpha = lightOff
        redCircle.layer.cornerRadius = redCircle.frame.size.width / 2
        yellowCircle.alpha = lightOff
        yellowCircle.layer.cornerRadius = yellowCircle.frame.size.width / 2
        greenCircle.alpha = lightOff
        greenCircle.layer.cornerRadius = greenCircle.frame.size.width / 2
    }

    @IBAction func trafficLightsStarter() {
        if redCircle.alpha == lightOn {
            redCircle.alpha = lightOff
            yellowCircle.alpha = lightOn
        } else if yellowCircle.alpha == lightOn {
            yellowCircle.alpha = lightOff
            greenCircle.alpha = lightOn
        } else if greenCircle.alpha == lightOn {
            greenCircle.alpha = lightOff
            redCircle.alpha = lightOn
        } else {
            redCircle.alpha = lightOn
            trafficLightsButton.setTitle("NEXT", for: .normal)
        }
        
    }
    
}

