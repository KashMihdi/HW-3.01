//
//  Animation.swift
//  HW 3.01
//
//  Created by Kasharin Mikhail on 02.05.2023.
//

import Foundation

class Animation {

    private static let dataStore = AnimationSetting.shared
    
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    private init(preset: String, curve: String, force: CGFloat, duration: CGFloat, delay: CGFloat) {
        self.preset = preset
        self.curve = curve
        self.force = force
        self.duration = duration
        self.delay = delay
    }
    
    static func setAnimation() -> Animation {
        Animation(
            preset: dataStore.preset.randomElement() ?? "",
            curve: dataStore.curve.randomElement() ?? "",
            force: CGFloat.random(in: dataStore.force),
            duration: CGFloat.random(in: dataStore.duration),
            delay: CGFloat.random(in: dataStore.delay)
        )
    }
}
