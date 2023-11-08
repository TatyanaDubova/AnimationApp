//
//  Animation.swift
//  AnimationApp
//
//  Created by Татьяна Дубова on 08.11.2023.
//

import Foundation
import SpringAnimation

struct AnimationDescription {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
}

extension AnimationDescription {
    static func getRandomSpringAnimation() -> AnimationDescription {
        AnimationDescription (
            preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: Float.random(in: 0...1),
            duration: Float.random(in: 0...1),
            delay: Float.random(in: 0...1)
        )
    }
}
