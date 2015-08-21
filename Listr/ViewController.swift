//
//  ViewController.swift
//  Listr
//
//  Created by Frank Desimini on 2015-08-17.
//  Copyright (c) 2015 Frank Desimini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var companyLogo: UIImageView!    
    var gameArtwork:UIImage?

    
    @IBOutlet weak var titleLabel: UILabel!

    var titleData:String?
    
    @IBOutlet weak var copyLabel: UILabel!
    
    var copyData:String?
    
//    @IBOutlet weak var gameImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.titleLabel.text = titleData
        self.copyLabel.text = copyData
        self.companyLogo.image = gameArtwork
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

