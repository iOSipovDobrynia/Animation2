//
//  Parameter.swift
//  Animation
//
//  Created by Goodwasp on 27.08.2023.
//

import Foundation
import SpringAnimation

struct Parameters {
    let force: Double
    let duration: Double
    let delay: Double
    let animation: String
    let curves: String
    
    static func getParameters() -> Parameters {
        let randomForce = Double.random(in: 1...1.5)
        let randomDuration = Double.random(in: 1...2)
        let randomDelay = Double.random(in: 0...0.5)
        let randomAnimation = AnimationPreset.allCases.randomElement()?.rawValue
        let randomCurves = AnimationCurve.allCases.randomElement()?.rawValue
        
        let randomParameters = Parameters(
            force: randomForce,
            duration: randomDuration,
            delay: randomDelay,
            animation: randomAnimation ?? "pop",
            curves: randomCurves ?? "easeIn"
        )
        
        return randomParameters
    }
}
