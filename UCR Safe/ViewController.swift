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
        guard let numberString = sender.titleLabel?.text, let url = URL(string:"teleprompt://\(numberString)") else {
            return
        } /*\(numberString)*/
        
        UIApplication.shared.open(url)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

