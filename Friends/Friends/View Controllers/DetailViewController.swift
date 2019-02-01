//
//  DetailViewController.swift
//  Friends
//
//  Created by Nathanael Youngren on 1/31/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    private func updateViews() {
        guard let friend = friend else { return }
        imageOfFriend?.image = friend.image
        friendNameLabel?.text = friend.name.capitalized
        friendDetailLabel?.text = friend.detail
        navigationItem.title = friend.name.capitalized
    }
    
    @IBOutlet weak var imageOfFriend: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!
    @IBOutlet weak var friendDetailLabel: UILabel!
    
    var friend: Friend? {
        didSet {
            updateViews()
        }
    }
    
}
