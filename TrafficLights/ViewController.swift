//
//  ViewController.swift
//  TrafficLights
//
//  Created by ALEKSEY SUSLOV on 09.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var lightIndex = 0
    private let lightOn: CGFloat = 1.0
    private let lightOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redView.alpha = lightOff
        yellowView.alpha = lightOff
        greenView.alpha = lightOff
    }
    
    override func viewWillLayoutSubviews() {
        super .viewWillLayoutSubviews()
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        let lights = [redView, yellowView, greenView]
        
        for index in 0...lights.count - 1 {
            if index == lightIndex {
                lights[index]?.alpha = lightOn
            } else {
                lights[index]?.alpha = lightOff
            }
        }
        
        if lightIndex < lights.count - 1 {
            lightIndex += 1
        } else {
            lightIndex = 0
        }
    }
}

