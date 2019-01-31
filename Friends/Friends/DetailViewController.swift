//
//  DetailViewController.swift
//  Friends
//
//  Created by Nathanael Youngren on 1/31/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageOfFriend: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!
    @IBOutlet weak var friendDetailLabel: UILabel!
    
    var friend: Friend?
    
}
