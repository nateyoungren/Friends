//
//  FriendsTableViewController.swift
//  Friends
//
//  Created by Nathanael Youngren on 1/31/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        friendController.initializeFriends(list: names)
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendController.friends.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath)
        guard let friendCell = cell as? FriendTableViewCell else { return cell }
        friendCell.friend = self.friendController.friends[indexPath.row]
        return friendCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Detail" {
            guard let detailVC = segue.destination as? DetailViewController,
            let index = tableView.indexPathForSelectedRow else { return }
            detailVC.friend = friendController.friends[index.row]
        }
    }
    
    let friendController = FriendController()
    
    let names = ["rachel": "I'm gonna go get one of those job things.",
                 "ross": "I'm the holiday armadillo!",
                 "monica": "I'm breezy!",
                 "chandler": "So it seems like this internet thing is here to stay, huh?",
                 "phoebe": "Thank you, my babies.",
                 "joey": "Well the fridge broke, so I had to eat everything."]

}
