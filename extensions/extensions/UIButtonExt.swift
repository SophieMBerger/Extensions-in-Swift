//
//  UIButtonExt.swift
//  extensions
//
//  Created by Sophie Berger on 05.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

extension UIButton {
    func wiggle() {
        let wiggleAnim = CABasicAnimation(keyPath: "position") //instantiating an animation
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5 //how many times animation should be repeated
        wiggleAnim.autoreverses = true //if wiggle one way auto-wiggle back the other way
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y) //move button 4 points on x-axis
        wiggleAnim.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position") //have to add animation to button layer to allow it to work on button
    }
    
    func dim() {
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = CGFloat(0.75)
        }) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0
            })
        }
    }
    
    func colorize() {
        let randomNumberArray = generateRandomNumbers(quantity: 3)
        let randomColor = UIColor(red: randomNumberArray[0]/255, green: randomNumberArray[1]/255, blue: randomNumberArray[2]/255, alpha: 1.0)
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = randomColor
        }
    }
}
