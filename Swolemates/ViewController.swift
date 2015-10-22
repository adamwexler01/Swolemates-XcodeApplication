//
//  ViewController.swift
//  Swolemates
//
//  Created by Adam Wexler on 10/1/15.
//  Copyright © 2015 apwex.com. All rights reserved.
//

import UIKit
import Neon

class ViewController: UIViewController {
    
    var backgroundColor = UIColor()
    
    @IBOutlet weak var titleOfApplication: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Establish Setup Of Application
        
        //Setting the Colors for the background
        
        
        let red = CGFloat(0.184)
        let green = CGFloat(0.204)
        let blue = CGFloat(0.239)
        let alpha = CGFloat(1.0)
        backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        view.backgroundColor = backgroundColor
        
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
        
        performSegueWithIdentifier("LoginScreen", sender: self)
    
    }

    @IBAction func goToNewMember(sender: AnyObject) {
        performSegueWithIdentifier("NewMemberSegue", sender: self)
    }

    @IBAction func goToInstructions(sender: AnyObject) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "LoginScreen") {
            let destination = segue.destinationViewController as? LoginViewController
            destination?.loginColor = self.backgroundColor ?? UIColor()
        }
        if (segue.identifier == "NewMemberSegue"){
            let destination = segue.destinationViewController as? BeforeSignUpViewController
            destination?.loginColor = self.backgroundColor ?? UIColor()
        }
    }
    
}

