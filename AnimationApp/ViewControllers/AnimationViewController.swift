//
//  ViewController.swift
//  AnimationApp
//
//  Created by Татьяна Дубова on 07.11.2023.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: SpringLabel!
    @IBOutlet weak var runButton: SpringButton!
    
    
    private var animation = AnimationDescription.getRandomSpringAnimation()
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        
        animationLabel.animation = animation.preset
        animationLabel.curve = animation.curve
        animationLabel.force = CGFloat(animation.force)
        animationLabel.duration = CGFloat(animation.duration)
        animationLabel.delay = CGFloat(animation.delay)
        
        animationView.animate()
        animationLabel.animate()
        animation = AnimationDescription.getRandomSpringAnimation()
        
        runButton.setTitle("Run \(animation.preset)", for: .normal)
    }
}

