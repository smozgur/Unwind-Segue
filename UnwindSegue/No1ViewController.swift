//
//  No1ViewController.swift
//  UnwindSegue
//
//  Created by Suat Ozgur on 8/3/16.
//  Copyright © 2016 BatCoder. All rights reserved.
//

import UIKit

class No1ViewController: UIViewController {

    @IBOutlet weak var homeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToHome(segue:UIStoryboardSegue) {
        if let vc = segue.sourceViewController as? No3ViewController {
            self.navigationItem.title = "\(vc.navigationItem.title!) - \(vc.txtPhone.text!)"
        }
    }
    
}
