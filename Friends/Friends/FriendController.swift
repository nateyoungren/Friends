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
    
    func initializeFriends() {
        
        let names = ["rachel": "I'm gonna go get one of those job things.", "ross": "I'm the holiday armadillo!", "monica": "I'm breezy!", "chandler": "So it seems like this internet thing is here to stay, huh?", "phoebe": "Thank you, my babies.", "joey": "Well the fridge broke, so I had to eat everything."]
    
        for (name, detail) in names {
            guard let image = UIImage(named: name) else { return }
            let friend = Friend(image: image, name: name, detail: detail)
            friends.append(friend)
        }
    }
    
}
