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
    
    @IBOutlet weak var titleLabel: UILabel!

    var titleData:String?
    
    @IBOutlet weak var copyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.titleLabel.text = titleData
        self.copyLabel.text = "This is some text showing that we can update this on the fly"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

