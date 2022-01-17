//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alex Kulish on 11.01.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        // Задаем лейблу начальное значение
        descriptionLabel.text = animation.description
    }
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        // по нажатию на кнопку меняем значение лейбла
        descriptionLabel.text = animation.description
        // настройка анимации
        prepareAnimation()
        // вызываем анимацию
        springAnimationView.animate()
        // переопределяем анимацию и создаем новый экземпляр модели
        animation = Animation.getAnimation()
        // задаем название кнопки в зависимости от нового экземпляра модели
        sender.setTitle("Run \(animation.name)", for: .normal)
        
    }
    
    private func prepareAnimation() {
        
        // настройка анимации
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force // начиная с Swift 5.5 можно передавать Double в CGFloat напрямую без приведения
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
    
}



