//
//  FriendController.swift
//  Friends
//
//  Created by Nathanael Youngren on 1/31/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class FriendController {
    
    var friends: [Friend] = []
    
    func initializeFriends(list: [String: String]) {
    
        for (name, detail) in list {
            guard let image = UIImage(named: name) else { return }
            let friend = Friend(image: image, name: name, detail: detail)
            friends.append(friend)
        }
    }
    
}
