//
//  BeforeSignUpViewController.swift
//  Swolemates
//
//  Created by Adam Wexler on 10/16/15.
//  Copyright © 2015 apwex.com. All rights reserved.
//

import UIKit
import Neon
import Onboard

class BeforeSignUpViewController: OnboardingContentViewController {

    var loginColor: UIColor = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstPage = OnboardingContentViewController.contentWithTitle("Hello, We are SwoleMates!", body: "We are here to enhance your lifting experience", image: nil, buttonText: nil, action: nil)
        let secondPage = OnboardingContentViewController.contentWithTitle("Title Page", body: "Body Area", image: nil, buttonText: nil,action: nil)
        let thirdPage = OnboardingContentViewController.contentWithTitle("Title Page", body: "Body Area", image: nil, buttonText: nil,action: nil)
        let fourthPage = OnboardingContentViewController.contentWithTitle("Title Page", body: "Body Area", image: nil, buttonText: nil,action: nil)
        let fifthPage = OnboardingContentViewController.contentWithTitle("Title Page", body: "Body Area", image: nil, buttonText: "Let's Lift") { () -> Void in
            self.performSegueWithIdentifier("SignUpSegue", sender: self)
        }
        
        let background = UIImage(named: "background")
        
        let onboardingVC:OnboardingViewController = OnboardingViewController.onboardWithBackgroundImage(background, contents: [firstPage, secondPage, thirdPage, fourthPage, fifthPage])
        firstPage.movesToNextViewController = true
        firstPage.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        secondPage.movesToNextViewController = true
        thirdPage.movesToNextViewController = true
        fourthPage.movesToNextViewController = true
        
        onboardingVC.swipingEnabled = true
        onboardingVC.shouldMaskBackground = false
        
        self.view.addSubview(onboardingVC.view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "SignUpSegue"){
            let destination = segue.destinationViewController as? SignUpViewController
            destination?.loginColor = self.loginColor ?? UIColor()
        }
    }
    

}
