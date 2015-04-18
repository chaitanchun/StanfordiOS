//
//  AppDelegate.swift
//  Bouncer
//
//  Created by Tristan Chai on 18/4/15.
//  Copyright (c) 2015 Tristan Chai. All rights reserved.
//

import UIKit
import CoreMotion

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    struct Motion  {
        static let Manager = CMMotionManager()
    }

}

