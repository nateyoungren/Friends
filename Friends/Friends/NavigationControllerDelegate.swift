//
//  NavigationControllerDelegate.swift
//  Friends
//
//  Created by Nathanael Youngren on 1/31/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        guard let toVC = toVC as? DetailViewController,
        let fromVC = fromVC as? DetailViewController else { return nil }
        
        if operation == .push {
            animator.fromLabel = sourceCell?.textLabel
            animator.fromImage = sourceCell?.imageView
            animator.toLabel = toVC.friendNameLabel
            animator.toImage = toVC.imageOfFriend
            return animator
        } else if operation == .pop {
            animator.fromLabel = fromVC.friendNameLabel
            animator.fromImage = fromVC.imageOfFriend
            animator.toLabel = sourceCell?.textLabel
            animator.toImage = sourceCell?.imageView
        }
        
        return nil
    }
    
    let animator = ImageTransitionAnimator()
    
    var sourceCell: UITableViewCell?
}
