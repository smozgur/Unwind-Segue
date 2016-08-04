//
//  No2ViewController.swift
//  UnwindSegue
//
//  Created by Suat Ozgur on 8/3/16.
//  Copyright © 2016 BatCoder. All rights reserved.
//

import UIKit

class No2ViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.delegate = self
        
        self.navigationItem.title = "Enter Name"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destinationViewController as? No3ViewController {
            vc.navigationItem.title = self.txtName.text
        }
    }
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        viewController.title = self.txtName.text
    }


}
