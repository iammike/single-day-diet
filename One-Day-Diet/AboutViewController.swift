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
        
        switch sender {
        case buyBook:
            guard let url = URL(string: "https://amzn.to/2NaoxmW") else { return }
            UIApplication.shared.open(url)
        case visitSite:
            guard let url = URL(string: "http://www.iammike.org") else { return }
            UIApplication.shared.open(url)
        case contactMe:
            guard let url = URL(string: "mailto:mike@iammike.org") else { return }
            UIApplication.shared.open(url)
        default:
            break
        }
    }
}
