//
//  ShareViewController.swift
//  FoodPin
//
//  Created by Marcus Brose on 14.01.15.
//  Copyright (c) 2015 Marcus Brose. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var blurEffect = UIBlurEffect(style: .Dark)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        messageButton.transform = CGAffineTransformMakeTranslation(0, 500)
        mailButton.transform = CGAffineTransformMakeTranslation(0, 500)
        facebookButton.transform = CGAffineTransformMakeTranslation(0, 500)
        twitterButton.transform = CGAffineTransformMakeTranslation(0, 500)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var backgroundImageView: UIImageView!

    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.7, delay: 0.4, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.5, options: nil, animations: {
            self.messageButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }, completion: nil)
        UIView.animateWithDuration(0.7, delay: 0.6, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.5, options: nil, animations: {
            self.mailButton.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.5, options: nil, animations: {
            self.facebookButton.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
        UIView.animateWithDuration(0.7, delay: 0.2, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.5, options: nil, animations: {
            self.twitterButton.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
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
