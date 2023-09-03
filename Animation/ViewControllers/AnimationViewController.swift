//
//  ViewController.swift
//  Animation
//
//  Created by Goodwasp on 27.08.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    // MARK: - Private prop
    private var currentParameters = Animation.getParameters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButton(with: currentParameters)
    }
    
    // MARK: - IBActions
    @IBAction func runButtonPressed() {
        updateLabels()
        let newParameters = Animation.getParameters()
        
        setupAnimation(with: newParameters)
        
        springAnimationView.animate()
        updateButton(with: newParameters)
        currentParameters = newParameters
    }
}

// MARK: - Private methods
extension AnimationViewController {
    private func updateLabels() {
        presetLabel.text = "Preset: \(currentParameters.animation)"
        curveLabel.text = "Curve: \(currentParameters.curves)"
        forceLabel.text = "Force: \(String(format: "%.2f", currentParameters.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", currentParameters.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", currentParameters.delay))"
    }
    
    private func updateButton(with parameters: Animation) {
        runButton.setTitle("Run \(parameters.animation)", for: .normal)
    }
    
    private func setupAnimation(with parameters: Animation) {
        springAnimationView.animation = parameters.animation
        springAnimationView.curve = parameters.curves
        springAnimationView.force = parameters.force
        springAnimationView.duration = parameters.duration
        springAnimationView.delay = parameters.delay
    }
}
