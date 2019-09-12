//
//  AboutViewController.swift
//  Single Day Diet
//
//  Created by Michael Collins on 9/11/19.
//  Copyright © 2019 Michael Collins. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var buyBook: UIButton!
    @IBOutlet weak var visitSite: UIButton!
    @IBOutlet weak var contactMe: UIButton!
    
    @IBAction func linkPressed(sender: UIButton) {
        var targetURL = ""
        
        switch sender {
        case buyBook:
            targetURL = "https://amzn.to/2NaoxmW"
        case visitSite:
            targetURL = "http://www.iammike.org"
        case contactMe:
            targetURL = "mailto:mike@iammike.org"
        default:
            break
        }
        
        UIApplication.shared.open(URL(string: targetURL)!)
    }
}
