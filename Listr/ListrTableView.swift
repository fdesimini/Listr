//
//  ListrTableView.swift
//  Listr
//
//  Created by Frank Desimini on 2015-08-18.
//  Copyright (c) 2015 Frank Desimini. All rights reserved.
//

import UIKit

class ListrTableView: UIViewController, UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
  
    var myFavouriteGames = [
        "Super Meat Boy",
        "Doom",
        "Super Mario Bros",
        "F Zero",
        "Grand Theft Auto",
        "Donkey Kong Tropical Freeze"
    ]
    
    var myFavGamesDetails = [
        "Parents need to know that Super Meat Boy is an extremely difficult side-scrolling platformer game loaded with bright red blood and lots of toilet humor.",
        "Parents need to know that the level of fear, blood, gore, and violence makes this game a poor choice for kids of all ages.",
        "Parents need to know that New Super Mario Bros. 2 is a typical Mario platformer game. Mario engages in a bit of mild violence -- hopping on enemies to flatten them, shooting fireballs -- but it's directed toward cartoonish, mindless, decidedly non-human enemies.",
        "Parents need to know that this cartoon features recklessness, speeding, aggressive driving, and violence through car crashes. Characters are quick to issue challenges and lose their temper. ",
        "Parents need to know that Grand Theft Auto V is an M-rated action game brimming with gang violence, nudity, extremely coarse language, and drug and alcohol abuse. It isn't a game for kids. ",
        "Parents need to know Donkey Kong Country: Tropical Freeze is a cartoonish platformer exclusive to Wii U. Donkey Kong and his cronies hop on enemies' heads or barrel through them with monkey rolls, knocking them out and making them fall off the screen or disappear. Pretty mild stuff. "
    ]
    
    var myFavGamesImages = [
        "supermeatboy",
        "doom",
        "supermario",
        "fzero",
        "gta4",
        "DKtropicalfreeze"
    ]
    
//    var titleData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    
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
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
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
        println("this alert box function got called")
        
        }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "presentation"
        {
            if let destinationVC = segue.destinationViewController as? ViewController {
                if let indexPath = tableView.indexPathForCell(sender as! UITableViewCell){
                    destinationVC.titleData = myFavouriteGames[indexPath.row]
                    destinationVC.copyData = myFavGamesDetails[indexPath.row]
                    let currentGameImage = UIImage(named: myFavGamesImages[indexPath.row])
                    destinationVC.gameArtwork = currentGameImage
                
                }
                
            }
            
        }
    }
    
}
