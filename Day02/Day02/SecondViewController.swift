//
//  SecondViewController.swift
//  Day02
//
//  Created by haicuan139 on 14-6-21.
//  Copyright (c) 2014 haicuan139. All rights reserved.
//

import UIKit
import QuartzCore

class SecondViewController: UIViewController {


    @IBAction func onClick(sender : AnyObject) {
                println("Second button onClick");
        var toController = SecondClickToViewController();
        self.navigationController.pushViewController(toController, animated: true);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tab2"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        var animation:CATransition = CATransition();
        animation.duration = CFTimeInterval(1);
        animation.type = kCATransitionMoveIn;
        animation.subtype = kCATransitionFromRight
        self.tabBarController.view.layer.addAnimation(animation, forKey: nil);
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
