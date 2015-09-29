//
//  SignInViewController.swift
//  MCao_Wk2_Dropbox
//
//  Created by Michie Cao on 9/23/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var thinkingIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    @IBAction func didPressLogin(sender: AnyObject) {
        
        if usernameField.text?.characters.count==0 && passwordField.text?.characters.count==0{
            
            var blankAlert = UIAlertView(title:"Email and Password Required", message: "Please enter your email address and password", delegate: nil, cancelButtonTitle: "OK")
            blankAlert.show()
            
    }else if usernameField.text?.characters.count == 0{
        
            var blankUsernameAlert = UIAlertView(title:"Email Required", message: "Please enter your email address", delegate: nil, cancelButtonTitle: "OK")
            blankUsernameAlert.show()
            
        } else if passwordField.text?.characters.count==0{
            
            var blankPasswordAlert = UIAlertView(title:"Password Required", message: "Please enter your password", delegate: nil, cancelButtonTitle:"OK")
            blankPasswordAlert.show()
            
        }else if usernameField.text=="mcao@twitter.com" && passwordField.text=="123"{
            
            
            thinkingIndicator.startAnimating()
            
            delay(2, closure: {()-> () in self.performSegueWithIdentifier("loginSegue", sender: nil)
            
                self.thinkingIndicator.stopAnimating()
                
            })
            
        }else {
            
            var alert = UIAlertView(title: "Sign-In Failed", message: "Incorrect email or password.", delegate: nil, cancelButtonTitle: "OK")
            
            thinkingIndicator.startAnimating()
            
            delay(2, closure: {()-> () in alert.show()
                
            self.thinkingIndicator.stopAnimating()
            
            
            })
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
