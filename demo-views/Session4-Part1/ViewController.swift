//
//  ViewController.swift
//  Session4-Part1
//
//  Created by Yvonne Chen [STUDENT] on 5/2/17.
//  Copyright © 2017 self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1Constraint: NSLayoutConstraint!
    
    @IBOutlet weak var button2Constraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button1Constraint.constant -= view.bounds.width
        
        button2Constraint.constant -= view.bounds.width
    }
    
    var animationPerformedOnce = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !animationPerformedOnce {
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.button1Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded() //layouts out subviews
                }, completion: nil)
            
            UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
                self.button2Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded() //layouts out subviews
                }, completion: nil)
            
        }
        
        animationPerformedOnce = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

