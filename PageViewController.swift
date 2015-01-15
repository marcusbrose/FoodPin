//
//  PageViewController.swift
//  FoodPin
//
//  Created by Marcus Brose on 15.01.15.
//  Copyright (c) 2015 Marcus Brose. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
   
    var pageHeadings = ["Personalize", "Locate", "Discover"]
    var pageSubheadings = ["Pin your favourite restaurant and create your own food guide", "Search and locate your favorite restaurant on Maps", "Find restaurant pinned by your friends and other foodies around the world"]
    var pageImages = ["homei", "mapintro", "fiveleaves"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        if let startingViewController = self.viewControllerAtIndex(0) {
            setViewControllers([startingViewController], direction: .Forward, animated: true, completion: nil)
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as PageContentViewController).index
        
        index++
        
        return self.viewControllerAtIndex(index);
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as PageContentViewController).index
        
        index--
        
        return self.viewControllerAtIndex(index);
    }
    
    func viewControllerAtIndex(index:Int) -> PageContentViewController? {
        
        if index == NSNotFound || index < 0 || index >= self.pageHeadings.count {
            return nil
        }
        
        if let pageContentViewController = storyboard?.instantiateViewControllerWithIdentifier("PageContentViewController") as? PageContentViewController {
            
            pageContentViewController.index = index
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.subheading = pageSubheadings[index]
            pageContentViewController.imageFile = pageImages[index]
            
            return pageContentViewController
        }
        
        return nil
    }
    
    func forward(index:Int) {
        
        if let nextViewController = self.viewControllerAtIndex(index+1) {
            setViewControllers([nextViewController], direction: .Forward, animated: true, completion: nil)
        }
    }
    
    // paging indicators
    /*
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return pageHeadings.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        
        if let pageContentViewController = storyboard?.instantiateViewControllerWithIdentifier("PageContentViewController") as? PageContentViewController {
            
            return pageContentViewController.index
        }
        return 0
    }
    */
}
