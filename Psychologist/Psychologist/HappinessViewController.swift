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
    
    private struct Constants {
        static let HappinessGestureScale: CGFloat = 4
    }
    
    @IBAction func changeHappiness(gesture: UIPanGestureRecognizer) {
        switch gesture.state {
        case .Ended:
            fallthrough
        case .Changed:
            let translation = gesture.translationInView(faceView)
            let happinessChange = -Int(translation.y / Constants.HappinessGestureScale)
            if happinessChange != 0 {
                happiness += happinessChange
                gesture.setTranslation(CGPointZero, inView: faceView)
            }
        default:
            break
        }
        
    }
    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
            faceView.addGestureRecognizer(UIPinchGestureRecognizer(target: faceView, action: "scale:"))
            
        }
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50) / 50
    }
    
    private func updateUI() {
        faceView?.setNeedsDisplay()
        title = "\(happiness)"
    }
}
