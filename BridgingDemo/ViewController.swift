//
//  ViewController.swift
//  BridgingDemo
//
//  Created by Kirti Parghi on 09/09/15.
//  Copyright (c) 2015 Kirti Parghi. All rights reserved.
//

import UIKit

extension UIViewController {
    func printHi() {
        print("demo")
    }
}

class ViewController: UIViewController, UITextFieldDelegate {

    var progrss: MBProgressHUD!
    var token: dispatch_once_t = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        printHi()
        
        dispatch_once(&token) { 
            print("call")
        }
    }

    func textFieldDidEndEditing(textField: UITextField) {
        self.view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
//        progrss = MBProgressHUD(view: self.view)
//        progrss.mode = MBProgressHUDModeIndeterminate
//        progrss.removeFromSuperViewOnHide = true
//        progrss.detailsLabelText = "kirti"
//        progrss.show(true)
        
//        self.view.addSubview(progrss)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

