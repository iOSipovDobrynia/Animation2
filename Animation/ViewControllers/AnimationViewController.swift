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
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var runButton: UIButton!
    
    // MARK: - Private prop
    private var currentAnimation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButton(with: currentAnimation)
    }
    
    // MARK: - IBActions
    @IBAction func runButtonPressed() {
        updateLabels()
        let newAnimation = Animation.getRandomAnimation()
        
        setupAnimation(with: newAnimation)
        springAnimationView.animate()
        
        updateButton(with: newAnimation)
        
        currentAnimation = newAnimation
    }
}

// MARK: - Private methods
extension AnimationViewController {
    private func updateLabels() {
        animationLabel.text = "\(currentAnimation.description)"
    }
    
    private func updateButton(with animation: Animation) {
        runButton.setTitle("Run \(animation.animation)", for: .normal)
    }
    
    private func setupAnimation(with animation: Animation) {
        springAnimationView.animation = animation.animation
        springAnimationView.curve = animation.curves
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
}
