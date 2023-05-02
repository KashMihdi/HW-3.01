//
//  ViewController.swift
//  HW 3.01
//
//  Created by Kasharin Mikhail on 02.05.2023.
//

import UIKit
import SpringAnimation

final class AnimateViewController: UIViewController {
    
    private var animation = Animation.setAnimation()
    
    @IBOutlet weak var animatingView: SpringView!
    @IBOutlet weak var animateNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }
    
    @IBAction func animateButtonTapped(_ sender: UIButton) {
        animatingView.animation = animation.preset
        animatingView.curve = animation.curve
        animatingView.force = animation.force
        animatingView.duration = animation.duration
        animatingView.delay = animation.delay
        animatingView.animate()
        
        updateLabel()
        
        animation = Animation.setAnimation()
        sender.setTitle("Go \(animation.preset)", for: .normal)
    }
    
    private func updateLabel() {
        animateNameLabel.text = """
            preset: \(animation.preset)
            curve: \(animation.curve)
            force: \(string(from: animation.force))
            duration: \(string(from: animation.duration))
            delay: \(string(from: animation.delay))
        """
    }
    
    private func string(from float: CGFloat) -> String {
        String(format: "%.2f", float)
    }
    

}

