//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Tristan Chai on 5/4/15.
//  Copyright (c) 2015 Tristan Chai. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {
    var happiness: Int = 50 {
        didSet {
            happiness = min(max(happiness, 0), 100)
            println("happiness = \(happiness)")
            updateUI()
        }
    }
    
    func updateUI() {
        
    }
}
