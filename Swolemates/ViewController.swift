//
//  ViewController.swift
//  Swolemates
//
//  Created by Adam Wexler on 10/1/15.
//  Copyright © 2015 apwex.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleOfApplication: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Establish Setup Of Application
        
        //Setting the Colors for the background
        let red = CGFloat(160/255.0)
        let green = CGFloat(25/255.0)
        let blue = CGFloat(25/255.0)
        let alpha = CGFloat(0.75)
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        //Setting the variables for the Title Label
        titleOfApplication.text = "SwoleMates"
        titleOfApplication.textColor = UIColor.whiteColor()
        titleOfApplication.adjustsFontSizeToFitWidth = false
        titleOfApplication.numberOfLines = 0
        titleOfApplication.textAlignment = .Center
        titleOfApplication.font = titleOfApplication.font.fontWithSize(40)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func goToLogin(sender: AnyObject) {
    }

    @IBAction func goToNewMember(sender: AnyObject) {
    }

    @IBAction func goToInstructions(sender: AnyObject) {
    }

    
    
    
}

