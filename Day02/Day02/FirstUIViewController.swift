//
//  FirstUIViewController.swift
//  Day02
//
//  Created by haicuan139 on 14-6-21.
//  Copyright (c) 2014 haicuan139. All rights reserved.
//

import UIKit
import QuartzCore


class FirstUIViewController: UIViewController {

    @IBAction func onClick(sender : AnyObject) {
    
        println("First button onClick");
        
        var toController = FirstClickToViewController();
        
        self.navigationController.pushViewController(toController, animated: true);
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Tab1"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

     override func viewDidDisappear(animated: Bool) {
        println("viewDidDisappear")
    }
    override func viewWillAppear(animated: Bool) {
//        var animation:CATransition = CATransition()
//        animation.duration = CFTimeInterval(10)
//        animation.type = "moveIn"
//        animation.timingFunction = CAMediaTimingFunction(name: "easeInEaseOut")
//        self.tabBarController.view.layer.addAnimation(animation, forKey: nil)
        var animation:CATransition = CATransition();
        animation.duration = CFTimeInterval(1);
        animation.type = kCATransitionMoveIn;
        self.tabBarController.view.layer.addAnimation(animation, forKey: nil);
//        animation.subtype = kCATransitionFromRight;
//        animation.timingFunction = CAMediaTimingFunction(name: "easeInEaseOut")
        
    
    }

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
