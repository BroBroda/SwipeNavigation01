//
//  ViewController.swift
//  SwipeNavigation_vea software
//
//  Created by Pierog on 13/05/16.
//  Copyright © 2016 pierog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let vc0 = ViewController0 (nibName: "ViewController0", bundle: nil)
        //create instance of view controller 0 = ViewController0.swift
        
        self.addChildViewController(vc0)
        //add as a child of ViewControler
        self.scrollView.addSubview(vc0.view)
        //add it's view to a scrollView
        vc0.didMoveToParentViewController(self)
        //self = viewController
        
        let vc1 = ViewController1 (nibName: "ViewController1", bundle: nil)
        
        // vc0 gets the firs slot on the scrollview, so if we want to scroll to the next page (vc1)
        // we have to set its frame to be diffrent than vc0
        
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width //next view controller starts after width of the phone; x origin of vc1 starts when the vc0 ends
        vc1.view.frame = frame1
        
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        
        
        let vc2 = ViewController2 (nibName: "ViewController2", bundle: nil)
        
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2 //times 2, because it has to be duoble size than vc1
        vc2.view.frame = frame2
        
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        
    
        
        let vc3 = ViewController3 (nibName: "ViewController3", bundle: nil)
        
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        vc3.view.frame = frame3
        
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 4, self.view.frame.size.height-66)
        
        //CGSizeMake = set values of width and height; 
        //width has to be *4 because we have 4 ViewControllers
        //-66 is because we are using navigation controller)
        //it will overlay the top of scrollview(navigationController: 44 + status bar: 22)

        
    
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

