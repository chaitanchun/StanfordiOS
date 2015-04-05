//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Tristan Chai on 5/4/15.
//  Copyright (c) 2015 Tristan Chai. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource {
    var happiness: Int = 10 {
        didSet {
            happiness = min(max(happiness, 0), 100)
            println("happiness = \(happiness)")
            updateUI()
        }
    }
    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50) / 50
    }
    
    private func updateUI() {
        faceView.setNeedsDisplay()
    }
}
