//
//  Animation.swift
//  HW 3.01
//
//  Created by Kasharin Mikhail on 02.05.2023.
//

import Foundation

struct Animation {

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
        let dataStore = AnimationSetting.shared
        return Animation(
            preset: dataStore.presets.randomElement() ?? "",
            curve: dataStore.curves.randomElement() ?? "",
            force: CGFloat.random(in: 0.5...1.5),
            duration: CGFloat.random(in: 2...4),
            delay: CGFloat.random(in: 0...1)
        )
    }
}
