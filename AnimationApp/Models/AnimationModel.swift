//
//  AnimationModel.swift
//  AnimationApp
//
//  Created by Alex Kulish on 12.01.2022.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
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
        Animation(name: DataManager.shared.animations.randomElement()?.rawValue ?? "fadeIn",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
                  force: Double.random(in: 0...2),
                  duration: Double.random(in: 1...2),
                  delay: Double.random(in: 0...1))
    }
    // name: Spring.AnimationPreset.allCases.map { $0.rawValue }.randomElement() ?? "" также можно сразу инициализировать таким образом
}

//extension Animation {
//
//    static private func getAnimation() -> [String] {
//        Spring.AnimationPreset.allCases.map { $0.rawValue } // можно перебирать как обычный массив, т.к подписан под протокол CaseItarable
//    }
//
//    // изначально было такое решение для 2 методов, но позже додумался до решения с map. Решил оставить оба решения для себя
//    static private func getCurve() -> String {
//        var curve = ""
//        for eachCurve in Spring.AnimationCurve.allCases.shuffled() {
//            curve = eachCurve.rawValue
//        }
//        return curve
//    }
//}
