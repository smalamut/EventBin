//
//  ViewController.swift
//  EventBinTester
//
//  Created by Jeffrey Silverstein on 3/28/16.
//  Copyright © 2016 com.silverstein. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    @IBOutlet var rightTriangle: UIImageView!
    @IBOutlet var leftTriangle: UIImageView!
    
    @IBOutlet var containerViewSignUp: UIView!
    @IBOutlet var containerViewSignIn: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightTriangle.hidden = true
        
        GIDSignIn.sharedInstance().uiDelegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func signInClicked(sender: UIButton) {
        rightTriangle.hidden = false
        leftTriangle.hidden = true
    
        self.containerViewSignIn.alpha = 1
        self.containerViewSignUp.alpha = 0
    

    }

    @IBAction func signUpClicked(sender: UIButton) {
        leftTriangle.hidden = false
        rightTriangle.hidden = true
        
        self.containerViewSignIn.alpha = 0
        self.containerViewSignUp.alpha = 1

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Stop the UIActivityIndicatorView animation that was started when the user
    // pressed the Sign In button
    func signInWillDispatch(signIn: GIDSignIn!, error: NSError!) {
        //myActivityIndicator.stopAnimating()
    }
    
    // Present a view that prompts the user to sign in with Google
    func signIn(signIn: GIDSignIn!,
        presentViewController viewController: UIViewController!) {
            self.presentViewController(viewController, animated: true, completion: nil)
            
            print("Sign in presented")
    }
    
    // Dismiss the "Sign in with Google" view
    func signIn(signIn: GIDSignIn!,
        dismissViewController viewController: UIViewController!) {
            self.dismissViewControllerAnimated(true, completion: nil)
            
            print("Sign in dismissed")
    }
    
    

}

