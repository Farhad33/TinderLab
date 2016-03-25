//
//  CardsViewController.swift
//  TinderApp
//
//  Created by Majid Rahimi on 3/24/16.
//  Copyright © 2016 Majid Rahimi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainImage: UIImageView!
    var initialValue: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPan(sender: AnyObject) {
        if sender.state == UIGestureRecognizerState.Began {
            initialValue = mainImage.center
        } else {
            mainImage.center.x = initialValue.x + sender.translationInView(mainImage).x
        }
    }
    

}

