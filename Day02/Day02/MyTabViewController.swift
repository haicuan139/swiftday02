//
//  MyTabViewController.swift
//  Day02
//
//  Created by haicuan139 on 14-6-28.
//  Copyright (c) 2014 haicuan139. All rights reserved.
//

import UIKit


class MyTabViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {


    var array = ["Beijing","Shanghai","Tianjin","Hebei"]
    @IBOutlet var MyTabView : UITableView

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return array.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
     
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
//        var index = indexPath.row
        cell.textLabel.text = array[indexPath.row]
        return cell;
    }

 func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
 {
            var index = indexPath.row
            println("onItemClick:\(array[index])")
 }


    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "List"


        MyTabView.delegate = self
        MyTabView.dataSource = self
        // Do any additional setup after loading the view.
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
