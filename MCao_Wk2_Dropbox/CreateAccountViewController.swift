//
//  CreateAccountViewController.swift
//  MCao_Wk2_Dropbox
//
//  Created by Michie Cao on 9/27/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var carouselText: UIImageView!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var createButton: UIImageView!
    @IBOutlet weak var createForm: UIImageView!
    @IBOutlet weak var agreeTerms: UIImageView!
    @IBOutlet weak var checkbox: UIButton!
    
    var initialY: CGFloat!
    let offset: CGFloat = -115
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initialY = firstNameField.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            
            self.carouselText.hidden = false
            
            self.firstNameField.frame.origin = CGPoint(x: self.firstNameField.frame.origin.x, y: self.initialY+15)
            self.lastNameField.frame.origin = CGPoint(x: self.lastNameField.frame.origin.x, y: self.initialY+60)
            self.emailField.frame.origin = CGPoint(x: self.emailField.frame.origin.x, y: self.initialY+105)
            self.passwordField.frame.origin = CGPoint(x: self.passwordField.frame.origin.x, y: self.initialY+145)
            self.createForm.frame.origin = CGPoint(x: self.createForm.frame.origin.x, y: self.initialY)
  
            self.agreeTerms.frame.origin = CGPoint(x: self.agreeTerms.frame.origin.x, y: self.initialY+190)
            self.checkbox.frame.origin = CGPoint(x: self.checkbox.frame.origin.x, y: self.initialY+195)
            
            
            
            }, completion: nil)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            
            self.carouselText.hidden = true
            
            self.firstNameField.frame.origin = CGPoint(x: self.firstNameField.frame.origin.x, y: self.initialY + self.offset-5)
            self.lastNameField.frame.origin = CGPoint(x: self.lastNameField.frame.origin.x, y: self.initialY + self.offset + 40)
            self.emailField.frame.origin = CGPoint(x: self.emailField.frame.origin.x, y: self.initialY + self.offset + 85)
            self.passwordField.frame.origin = CGPoint(x: self.passwordField
                .frame.origin.x, y: self.initialY + self.offset + 130)

            self.createForm.frame.origin = CGPoint(x: self.createForm
                .frame.origin.x, y: self.initialY + self.offset-20)
            
            self.checkbox.frame.origin = CGPoint(x: self.checkbox
                .frame.origin.x, y: self.initialY + self.offset + 180)
            self.agreeTerms.frame.origin = CGPoint(x: self.agreeTerms
                .frame.origin.x, y: self.initialY + self.offset + 175)

            }, completion: nil)
    }
    
    @IBAction func onBack(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    @IBAction func onCheckboxButton(sender: UIButton) {
        
        if sender.selected == true{
            sender.selected = false
        } else if sender.selected == false{
            sender.selected = true
        }
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
