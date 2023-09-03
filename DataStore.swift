//
//  DataStore.swift
//  Animation
//
//  Created by Goodwasp on 03.09.2023.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
