//
//  ViewController.swift
//  first_iosapp
//
//  Created by Trinh My Kim on 5/5/25.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    @IBOutlet weak var changeBackgroundColor: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    @IBAction func changeBackgroundColorTapped(_ sender: UIButton) {
//        let randomColor = changeColor()
//        view.backgroundColor = randomColor
        setGradientBackground()
    }
    
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds

        // Define random colors
        let color1 = UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: 1.0
        ).cgColor

        let color2 = UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: 1.0
        ).cgColor

        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)

        // Remove any existing gradient layers to avoid stacking
        view.layer.sublayers?.removeAll(where: { $0 is CAGradientLayer })

        // Insert new gradient
        view.layer.insertSublayer(gradientLayer, at: 0)
    }


}

