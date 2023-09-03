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
    
    static func getParameters() -> Animation {
        let randomForce = Double.random(in: 1...1.5)
        let randomDuration = Double.random(in: 1...2)
        let randomDelay = Double.random(in: 0...0.5)
        let randomAnimation = AnimationPreset.allCases.randomElement()?.rawValue
        let randomCurves = AnimationCurve.allCases.randomElement()?.rawValue
        
        let randomParameters = Animation(
            force: randomForce,
            duration: randomDuration,
            delay: randomDelay,
            animation: randomAnimation ?? "pop",
            curves: randomCurves ?? "easeIn"
        )
        
        return randomParameters
    }
}

enum AnimationPreset: String, CaseIterable {
    case pop
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

enum AnimationCurve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}
