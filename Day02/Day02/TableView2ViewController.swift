//
//  TableView2ViewController.swift
//  Day02
//
//  Created by haicuan139 on 14-6-28.
//  Copyright (c) 2014 haicuan139. All rights reserved.
//

import UIKit

class TableView2ViewController: UIViewController {

//    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        // Custom initialization
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
        var tableView = UITableView(frame:CGRectMake(0, 0, self.view.frame.width, self.view.frame.height),style:UITableViewStyle.Plain)
        self.view.addSubview(tableView);

        
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
