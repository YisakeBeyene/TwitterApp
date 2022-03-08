//
//  LoginViewController.swift
//  TwitterApp
//
//  Created by Isaac on 3/8/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onLoginButton(_ sender: Any) {
        
        let myUrl = "https://api.twitter.com/oauth/request_token"
        print("Button clicked")
        
        TwitterAPICaller.client?.login(url: myUrl, success: {
            print("It worked!")
//            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }, failure: { (Error) in
            print("Could not log in!")
        })
        
        print("After the button clicked")
    }
}
