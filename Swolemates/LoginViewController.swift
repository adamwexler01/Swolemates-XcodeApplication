//
//  LoginViewController.swift
//  Swolemates
//
//  Created by Adam Wexler on 10/6/15.
//  Copyright © 2015 apwex.com. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController {

    @IBOutlet weak var userPassword: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var loginTitle: UILabel!
    var loginColor: UIColor = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = loginColor
        loginTitle.textAlignment = .Center
        userEmail.textAlignment = .Center
        userPassword.textAlignment = .Center
        loginTitle.textColor = UIColor.whiteColor()
        userEmail.textColor = UIColor.whiteColor()
        userPassword.textColor = UIColor.whiteColor()
        loginTitle.text = "Swolemates"
        userEmail.text = "Email"
        userPassword.text = "Password"
        loginTitle.font = loginTitle.font.fontWithSize(40)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func printStatement(){
        print("Hey")
    }
    
}
