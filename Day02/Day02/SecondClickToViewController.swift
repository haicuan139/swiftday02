//
//  SecondClickToViewController.swift
//  Day02
//
//  Created by haicuan139 on 14-6-21.
//  Copyright (c) 2014 haicuan139. All rights reserved.
//

import UIKit

class SecondClickToViewController: UIViewController ,UIAlertViewDelegate{

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }
    
    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int){
        println("按钮索引:\(buttonIndex)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellowColor();
        var button:UIButton = UIButton.buttonWithType(UIButtonType.ContactAdd) as UIButton;
        button.frame = CGRectMake(50, 100, 100, 100);
        button.backgroundColor = UIColor.whiteColor();
        button.setTitle("Click me go back", forState: UIControlState.Normal);
        //@Selector(xxxxx)
//        button.setTitle("Clicked", forState: UIControlState.Highlighted);
        button.addTarget(self, action:"onBackButtonClick:" , forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(button);
        

        // Do any additional setup after loading the view.
    }

    func onBackButtonClick(sender: AnyObject!){
//        self.navigationController.popViewControllerAnimated(true);
//        var dialog = UIAlertView(title: "title", message: "Message", delegate: self, cancelButtonTitle: "cancel")
        var dialog = UIAlertView()
        dialog.title = "Title"
        dialog.message = "Message"
        dialog.delegate = self
        dialog.addButtonWithTitle(" OK ")
        dialog.addButtonWithTitle(" Cancel ")
        dialog.addButtonWithTitle("Other")
        dialog.show()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
