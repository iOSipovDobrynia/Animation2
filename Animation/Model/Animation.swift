//
//  Parameter.swift
//  Animation
//
//  Created by Goodwasp on 27.08.2023.
//

import Foundation

struct Animation {
    let force: Double
    let duration: Double
    let delay: Double
    let animation: String
    let curves: String
    
    var description: String {
        """
        Preset: \(animation)
        Curve: \(curves)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        let randomForce = Double.random(in: 1...1.5)
        let randomDuration = Double.random(in: 1...2)
        let randomDelay = Double.random(in: 0...0.5)
        let randomAnimation = DataStore.shared.animations.randomElement()?.rawValue ?? "pop"
        let randomCurves = DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn"
        
        let randomParameters = Animation(
            force: randomForce,
            duration: randomDuration,
            delay: randomDelay,
            animation: randomAnimation,
            curves: randomCurves
        )
        
        return randomParameters
    }
}
