//
//  ViewController.swift
//  BaseProject
//
//  Created by Santhosh on 13/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 100, y: 100, width: 300, height: 100)
        myLabel.text = "dmsgfjgsdjfgsdjfg"
        self.view.addSubview(myLabel)
        
        myLabel.backgroundColor = .appPrimaryColor
        
        
        myLabel.font = .thinFont(size: 100)
        
        
        for family in UIFont.familyNames {
                print("family:", family)
                for font in UIFont.fontNames(forFamilyName: family) {
                    print("font:", font)
                }
            }
    }


}

