//
//  helpers.swift
//  extensions
//
//  Created by Sophie Berger on 05.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit
//Function to generate random numbers for colorize function in UIButtonExt file
func generateRandomNumbers(quantity: Int) -> [CGFloat] { //quantity is the # of Ints we want to generate
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity { //_ because we do not need a varaible like i to trace (would never be used)
        let randomNumber = CGFloat(arc4random_uniform(255)) //255 highest bound
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
