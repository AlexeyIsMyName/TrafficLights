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
    
    var lightIndex = 0
    
    override func viewDidLoad() {
         super .viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
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
                lights[index]?.alpha = 1
            } else {
                lights[index]?.alpha = 0.3
            }
        }
        
        if lightIndex < lights.count - 1 {
            lightIndex += 1
        } else {
            lightIndex = 0
        }
    }
}

