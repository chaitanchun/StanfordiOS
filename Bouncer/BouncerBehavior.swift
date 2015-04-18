//
//  BouncerBehavior.swift
//  Bouncer
//
//  Created by Tristan Chai on 18/4/15.
//  Copyright (c) 2015 Tristan Chai. All rights reserved.
//

import UIKit

class BouncerBehavior: UIDynamicBehavior {
    let gravity = UIGravityBehavior()
    
    lazy var collider: UICollisionBehavior = {
        let lazilyCreatedCollider = UICollisionBehavior()
        lazilyCreatedCollider.translatesReferenceBoundsIntoBoundary = false
        return lazilyCreatedCollider
        }()
    
    lazy var blockBehavior: UIDynamicItemBehavior = {
        let lazilyCreatedBlockBehaveior = UIDynamicItemBehavior()
        lazilyCreatedBlockBehaveior.allowsRotation = true
        lazilyCreatedBlockBehaveior.elasticity = 0.85
        lazilyCreatedBlockBehaveior.friction = 0
        lazilyCreatedBlockBehaveior.resistance = 0
        return lazilyCreatedBlockBehaveior
        }()
    
    override init() {
        super.init()
        addChildBehavior(gravity)
        addChildBehavior(collider)
        addChildBehavior(blockBehavior)
    }
    
    func addBlock(block: UIView) {
        dynamicAnimator?.referenceView?.addSubview(block)
        gravity.addItem(block)
        collider.addItem(block)
        blockBehavior.addItem(block)
    }
    
    func removeBlock(block: UIView) {
        gravity.removeItem(block)
        collider.removeItem(block)
        blockBehavior.removeItem(block)
        block.removeFromSuperview()
    }
    
    func addBarrier(path: UIBezierPath, named name: String) {
        collider.removeBoundaryWithIdentifier(name)
        collider.addBoundaryWithIdentifier(name, forPath: path)
    }
}
