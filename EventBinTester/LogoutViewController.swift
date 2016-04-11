//
//  LogoutViewController.swift
//  EventBinTester
//
//  Created by Jeffrey Silverstein on 3/28/16.
//  Copyright © 2016 com.silverstein. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.navigationBarHidden = true
        
        GIDSignIn.sharedInstance().uiDelegate = self
        getName.text = GIDSignIn.sharedInstance().currentUser.profile.name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var getName: UILabel!
    
    @IBAction func signOutButtonTapped(sender: AnyObject) {
         GIDSignIn.sharedInstance().signOut()
        
        let signInPage = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
    
        
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.window?.rootViewController = signInPage
        
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
