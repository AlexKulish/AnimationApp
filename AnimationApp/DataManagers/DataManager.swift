//
//  DataManager.swift
//  AnimationApp
//
//  Created by Alex Kulish on 17.01.2022.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    // Вариант 1
    let animations: [Spring.AnimationPreset] = [
        .fall,
        .fadeInLeft,
        .fadeIn,
        .fadeInDown,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .wobble,
        .zoomIn,
        .zoomOut
    ]
    
    // Вариант 2
    let curves = Spring.AnimationCurve.allCases
    
    private init () {}
    
}
