//
//  ViewController.swift
//  TableViewExampleThree
//
//  Created by Kanakaraju Chinnam on 1/23/16.
//  Copyright © 2016 Sparity. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var array = ["Chinna","Mohan","Venkat","Subhash","Madhu","Gopi","Vamshi"]
    
    var cricket = ["Ball","Bat","Gloves","Helmet","Pads","Shoes","Wickets"]
    
   //self.UITableViewDataSource
    //self.UITableViewDelegate
    

    @IBOutlet weak var tableView: UITableView!
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    var cell:CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("CustomCell") as! CustomTableViewCell
    
    cell.ImageView.image = UIImage(named:self.cricket[indexPath.row])
    
    cell.lable.text = self.cricket[indexPath.row]
    
    return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return array.count
    }
   // func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        //let Cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        //Cell?.textLabel!.text = array[indexPath.row]
        //return Cell!
    }


