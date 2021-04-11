//
//  ViewController.swift
//  UCR Safe
//
//  Created by Shruti Jana on 4/9/21.
//  Copyright © 2021 Shruti J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func escortCall(_ sender: UIButton) {
        guard let numberString = sender.titleLabel?.text, let url = URL(string:"telprompt://\(numberString)") else {
            return
        } /*\(numberString)*/
        
        UIApplication.shared.open(url)
    }
    
    
    @IBAction func mapLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://wrc.ucr.edu/programs/campus-safety-escort-service")! as URL, options: [:], completionHandler: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

