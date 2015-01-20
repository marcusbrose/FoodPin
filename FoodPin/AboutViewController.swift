//
//  AboutViewController.swift
//  FoodPin
//
//  Created by Marcus Brose on 19.01.15.
//  Copyright (c) 2015 Marcus Brose. All rights reserved.
//

import UIKit
import MessageUI

class AboutViewController: UIViewController, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendEmail(sender: AnyObject) {
        
        if MFMailComposeViewController.canSendMail() {
            var composer = MFMailComposeViewController()
            composer.mailComposeDelegate = self
            composer.setToRecipients(["contact@marcusbrose.com"])
            composer.navigationBar.tintColor = UIColor.whiteColor()
            presentViewController(composer, animated: true, completion: nil)
            
            UIApplication.sharedApplication().setStatusBarStyle(.LightContent, animated: false)
        }
    }
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        
        switch result.value {
        case MFMailComposeResultCancelled.value :
            println("Mail canceled")
            
        case MFMailComposeResultSaved.value :
            println("Mail saved")
            
        case MFMailComposeResultSent.value :
            println("Mail sent")
            
        case MFMailComposeResultFailed.value :
            println("Failed to send mail: \(error.localizedDescription)")
        
        default :
            break
        }
        dismissViewControllerAnimated(true, completion: nil)
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
