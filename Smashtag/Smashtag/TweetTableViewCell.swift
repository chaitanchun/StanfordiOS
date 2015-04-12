//
//  TweetTableViewCell.swift
//  Smashtag
//
//  Created by Tristan Chai on 12/4/15.
//  Copyright (c) 2015 Tristan Chai. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    var tweet: Tweet? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI()
    {
        
    }
    @IBOutlet weak var tweetProfileImageView: UIImageView!

    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var tweetScreenNameLabel: UILabel!
}
