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

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
