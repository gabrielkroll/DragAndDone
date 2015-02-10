//
//  StatsTransitionAnimator.swift
//  DragAndDone
//
//  Created by Ricardo Gonzalez on 2015-02-05.
//  Copyright (c) 2015 Gabriel Kroll. All rights reserved.
//

import UIKit

class StatsTransitionAnimator: DNDTransitionAnimator {
    var taskViews = Array<TaskView>()
    override func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        println("ANIMATE TRANSITION")
        if dismissing
        {
            let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
            let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
            let containerView = transitionContext.containerView()
            let duration = self.transitionDuration(transitionContext)
            
            UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                for tv in self.taskViews
                {
                    if tv.done
                    {
                        tv.center.x = (toVC as ViewController).doneXPosition
                    } else {
                        tv.center.x = (toVC as ViewController).todoXPosition
                    }
                }
                fromVC!.view.frame.origin.x = containerView.bounds.size.width
                }, completion: { (completed) -> Void in
                    transitionContext.completeTransition(true)
            })
            
        } else {
            let toVc = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
            let fromVc = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
            
            println("FROM VC \(fromVc) TO VC:\(toVc)")
            
            let containerView = transitionContext.containerView()
            var frame:CGRect!
            frame = CGRectMake(containerView.bounds.size.width, topBarHeight, containerView.bounds.size.width * 2 / 3,containerView.bounds.size.height - topBarHeight)
            toVc?.view.frame = frame
            containerView.addSubview(toVc!.view)
            let duration = self.transitionDuration(transitionContext)
            UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                for tv in self.taskViews
                {
                    if tv.done
                    {
                        tv.center.x = fromVc!.view.frame.size.width - frame.size.width
                    } else {
                        tv.center.x = 0.0
                    }
                }
                toVc!.view.frame.origin.x = containerView.bounds.size.width / 3
                }, completion: { (completed) -> Void in
                    transitionContext.completeTransition(true)
            })
        }
        
        
        
    }
    
    override func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return 0.5
    }
}
