//
//  ActivitiesViewController.swift
//  Bapp
//
//  Created by Hi_Hu on 6/7/15.
//  Copyright (c) 2015 hi_hu. All rights reserved.
//

import UIKit
import Parse

class ActivitiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var activitiesTableView: UITableView!
    
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
        "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
        "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
        "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
        "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activitiesTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // responsible for retruning a preconfigured cell that will be used to render the row in the table specified by the indexPath
        
        let cell = tableView.dequeueReusableCellWithIdentifier("activityCellID", forIndexPath: indexPath) as! ActivityTableViewCell
        
        let cityState = data[indexPath.row].componentsSeparatedByString(", ")
        cell.cityLabel.text = cityState.first
        cell.stateLabel.text = cityState.last
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // responsible for telling the UITableView how many rows are in each section
        return data.count
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
