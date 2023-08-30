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
    private var currentParameters = Parameters.getParameters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButton(with: currentParameters)
    }
    
    // MARK: - IBActions
    @IBAction func runButtonPressed() {
        updateLabels(with: currentParameters)
        let newParameters = Parameters.getParameters()
        
        setupAnimation(with: newParameters)
        
        springAnimationView.animate()
        updateButton(with: newParameters)
        currentParameters = newParameters
    }
}

// MARK: - Private methods
extension AnimationViewController {
    private func updateLabels(with parameters: Parameters) {
        presetLabel.text = "Preset: \(parameters.animation)"
        curveLabel.text = "Curve: \(parameters.curves)"
        forceLabel.text = "Force: \(String(format: "%.2f", parameters.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", parameters.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", parameters.delay))"
    }
    
    private func updateButton(with parameters: Parameters) {
        runButton.setTitle("Run \(parameters.animation)", for: .normal)
    }
    
    private func setupAnimation(with parameters: Parameters) {
        springAnimationView.animation = parameters.animation
        springAnimationView.curve = parameters.curves
        springAnimationView.force = parameters.force
        springAnimationView.duration = parameters.duration
        springAnimationView.delay = parameters.delay
    }
}
