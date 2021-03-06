//
//  StatsViewController.swift
//  DragAndDone
//
//  Created by Ricardo Gonzalez on 2015-02-04.
//  Copyright (c) 2015 Gabriel Kroll. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    lazy var dimmingView :UIView = {
        let fx = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let fxView = UIVisualEffectView(effect: fx)
        fxView.frame = self.view.bounds
        fxView.alpha = 1.0
        return fxView
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.addSubview(dimmingView)
        // Do any additional setup after loading the view.
        println("STATS VIEW CONTROLLER DID LOAD")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func handleTap(sender: UITapGestureRecognizer) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
