//
//  AnimationSetting.swift
//  HW 3.01
//
//  Created by Kasharin Mikhail on 02.05.2023.
//

import Foundation

class AnimationSetting {
    static let shared = AnimationSetting()
    
    let preset = [""]
    let curve = [""]
    let force: ClosedRange<CGFloat> = 1...2
    let duration: ClosedRange<CGFloat> = 1...2
    let delay: ClosedRange<CGFloat> = 1...2
    
    private init() {}
}
