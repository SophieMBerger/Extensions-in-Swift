//
//  ViewController.swift
//  extensions
//
//  Created by Sophie Berger on 05.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorizeBtn: UIButton!
    @IBOutlet weak var wiggleBtn: UIButton!
    @IBOutlet weak var dimBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colorizeBtnWasPressed(_ sender: Any) {
        colorizeBtn.colorize()
    }
    
    @IBAction func wiggleBtnWasPressed(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    
    @IBAction func dimBtnWasPressed(_ sender: Any) {
        dimBtn.dim()
    }
    
}

