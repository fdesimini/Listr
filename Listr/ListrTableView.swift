//
//  ListrTableView.swift
//  Listr
//
//  Created by Frank Desimini on 2015-08-18.
//  Copyright (c) 2015 Frank Desimini. All rights reserved.
//

import UIKit

class ListrTableView: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
  
    
    var myFavouriteGames = ["Super Meat Boy","Doom","Super Mario Bros", "F Zero", "Grand Theft Auto","Donkey Kong Tropical Freeze","Last of Us","Batman Arkham Asylum","Anything but Catan"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.myFavouriteGames.count
        
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    
    
    {
        
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
   
        cell.textLabel?.text = self.myFavouriteGames[indexPath.row]
        
        return cell
        
        
    }

    // added delegate method for didSelectRowAtIndexPath
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alertViewController = UIAlertController(title: "Row Selected", message: "You've selected a row", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: .Default){
            (action) in
            println(action)
        }

        let areYouSure = UIAlertAction(title: "Meh", style: .Cancel){
            (action) in
            println(action)
        }
        
        let cancelAction = UIAlertAction(title: "Delete", style: .Destructive){
            (action) in
            println(action)
        }


        //adding actions to be called
        alertViewController.addAction(okayAction)
        alertViewController.addAction(areYouSure)
        alertViewController.addAction(cancelAction)
  
        
        
        presentViewController(alertViewController, animated: true, completion: nil)
        
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
