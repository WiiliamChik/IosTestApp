//
//  FirstViewController.swift
//  TestApp
//
//  Created by 植伟良 on 2016/12/5.
//  Copyright © 2016年 植伟良. All rights reserved.
//

import UIKit

class FirstViewController:  UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(_ sender: Any) {
        yearOfBirth.resignFirstResponder()
        
        if let year:Int = Int(yearOfBirth.text!) {
            // year不为空
            if (year % 2 == 0) {
                image.image = UIImage(named:"Fire_Mario")
            } else {
                image.image = UIImage(named:"Ice_Mario")
                
            }
        } else {
            // year为空，弹出toast
        }
    }

}
