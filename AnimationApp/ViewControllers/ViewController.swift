//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alex Kulish on 11.01.2022.
//

import Spring

class ViewController: UIViewController {
    
    private var animation = Animation.getAnimation()

    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        descriptionLabel.text = animation.description
    }
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        descriptionLabel.text = animation.description
        prepareAnimation()
        springAnimationView.animate()
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
    }
    
    private func prepareAnimation() {
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
    }
    
}



