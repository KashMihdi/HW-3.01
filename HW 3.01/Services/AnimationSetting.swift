//
//  AnimationSetting.swift
//  HW 3.01
//
//  Created by Kasharin Mikhail on 02.05.2023.
//

import Foundation

final class AnimationSetting {
    static let shared = AnimationSetting()
    
    let presets = ["pop",
                  "slideLeft",
                  "slideRight",
                  "slideDown",
                  "slideUp",
                  "squeezeLeft",
                  "squeezeRight",
                  "squeezeDown",
                  "squeezeUp",
                  "fadeIn",
                  "fadeOut",
                  "fadeOutIn",
                  "fadeInLeft",
                  "fadeInRight",
                  "fadeInDown",
                  "fadeInUp",
                  "zoomIn",
                  "zoomOut",
                  "fall",
                  "shake",
                  "flipX",
                  "flipY",
                  "morph",
                  "squeeze",
                  "flash",
                  "wobble",
                  "swing"
    ]
    let curves = ["easeIn",
                 "easeOut",
                 "easeInOut",
                 "linear",
                 "spring",
                 "easeInSine",
                 "easeOutSine",
                 "easeInOutSine",
                 "easeInQuad",
                 "easeOutQuad",
                 "easeInOutQuad",
                 "easeInCubic",
                 "easeOutCubic",
                 "easeInOutCubic",
                 "easeInQuart",
                 "easeOutQuart",
                 "easeInOutQuart",
                 "easeInQuint",
                 "easeOutQuint",
                 "easeInOutQuint",
                 "easeInExpo",
                 "easeOutExpo",
                 "easeInOutExpo",
                 "easeInCirc",
                 "easeOutCirc",
                 "easeInOutCirc",
                 "easeInBack",
                 "easeOutBack",
                 "easeInOutBack"
    ]
    let forces: ClosedRange<CGFloat> = 0.5...1.5
    let durations: ClosedRange<CGFloat> = 2...4
    let delays: ClosedRange<CGFloat> = 0...1
    
    private init() {}
}
