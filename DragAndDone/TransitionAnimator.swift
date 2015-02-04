//
//  TransitionAnimator.swift
//  DragAndDone
//
//  Created by Ricardo Gonzalez on 2015-02-04.
//  Copyright (c) 2015 Gabriel Kroll. All rights reserved.
//

import UIKit

class TransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    var dismissing:Bool = false
    var animation:(()->Void)!
    var showsEditor:Bool!
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        println("ANIMATE TRANSITION")
        if dismissing
        {
            let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
            let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
            let containerView = transitionContext.containerView()
            let duration = self.transitionDuration(transitionContext)
            
            UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                self.animation()
                if self.showsEditor!
                {
                    fromVC!.view.frame.origin.x = -containerView.bounds.size.width * 2 / 3
                } else {
                    fromVC!.view.frame.origin.x = containerView.bounds.size.width
                }
                }, completion: { (completed) -> Void in
                    transitionContext.completeTransition(true)
            })
            
        } else {
            let toVc = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
            let fromVc = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
            
            println("FROM VC \(fromVc) TO VC:\(toVc)")
            
            let containerView = transitionContext.containerView()
            var frame:CGRect!
            if showsEditor!
            {
                frame = CGRectMake(-containerView.bounds.size.width * 2 / 3, 66, containerView.bounds.size.width * 2 / 3,containerView.bounds.size.height - 66)
            } else {
                frame = CGRectMake(containerView.bounds.size.width, 66, containerView.bounds.size.width * 2 / 3,containerView.bounds.size.height - 66)
            }
            toVc?.view.frame = frame
            containerView.addSubview(toVc!.view)
            let duration = self.transitionDuration(transitionContext)
            UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                if self.showsEditor!
                {
                    toVc!.view.frame.origin.x = 0
                } else {
                    toVc!.view.frame.origin.x = containerView.bounds.size.width / 3
                }
                //                    fromVc!.view.frame.origin.x = -containerView.bounds.size.width / 3
                self.animation()
                }, completion: { (completed) -> Void in
                    transitionContext.completeTransition(true)
            })
        }
        
        
        
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return 0.5
    }
}
