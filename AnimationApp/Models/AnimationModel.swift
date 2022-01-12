//
//  AnimationModel.swift
//  AnimationApp
//
//  Created by Alex Kulish on 12.01.2022.
//

import Spring

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        Animation: \(name)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(name: getAnimation().randomElement() ?? "",
                  curve: getCurve(),
                  force: Float.random(in: 1.0...2.0),
                  duration: Float.random(in: 1.0...2.0),
                  delay: Float.random(in: 1.0...2.0))
    }
    // name: Spring.AnimationPreset.allCases.map { $0.rawValue }.randomElement() ?? "" также можно сразу инициализировать таким образом
}

extension Animation {
    
    static private func getAnimation() -> [String] {
        Spring.AnimationPreset.allCases.map { $0.rawValue } // можно перебирать как обычный массив, т.к подписан под протокол CaseItarable
    }
    
    // изначально было такое решение для 2 методов, но позже додумался до решения с map. Решил оставить оба решения для себя
    static private func getCurve() -> String {
        var curve = ""
        for eachCurve in Spring.AnimationCurve.allCases.shuffled() {
            curve = eachCurve.rawValue
        }
        return curve
    }
}
