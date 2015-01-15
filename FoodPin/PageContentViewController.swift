//
//  PageContentViewController.swift
//  FoodPin
//
//  Created by Marcus Brose on 15.01.15.
//  Copyright (c) 2015 Marcus Brose. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {

    var index = 0
    var heading = ""
    var subheading = ""
    var imageFile = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pageControl.currentPage = index
        headingLabel.text = heading
        subheadingLabel.text = subheading
        contentImageView.image = UIImage(named: imageFile)
        
        getStartedButton.hidden = index == 2 ? false : true
        forwardButton.hidden = index == 2 ? true : false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var subheadingLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var getStartedButton: UIButton!
    
    @IBAction func close(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(true, forKey: "hasViewedWalkthrough")
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func nextScreen(sender: AnyObject) {
        let pageViewController = self.parentViewController as PageViewController
        pageViewController.forward(index)
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
