//
//  ImageTransitionAnimator.swift
//  Friends
//
//  Created by Nathanael Youngren on 1/31/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class ImageTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let fromVC = transitionContext.viewController(forKey: .from),
        let toVC = transitionContext.viewController(forKey: .to),
        let toView = transitionContext.view(forKey: .to) else { return }
        
        let containerView = transitionContext.containerView
        
        let toViewFinalFrame = transitionContext.finalFrame(for: toVC)
        
        containerView.addSubview(toView)
        toView.frame = toViewFinalFrame
        toView.alpha = 0
        
//        
        
        
        
        
        
        
    }
    
    var fromLabel: UILabel?
    var fromImage: UIImageView?
    var toLabel: UILabel?
    var toImage: UIImageView?
    
}
