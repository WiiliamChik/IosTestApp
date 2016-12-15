//
//  SecondViewController.swift
//  TestApp
//
//  Created by 植伟良 on 2016/12/5.
//  Copyright © 2016年 植伟良. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var hasProperty: UISwitch!
    
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UISlider的滑动事件
    @IBAction func heightChanged(_ sender: Any) {
        let slider = sender as! UISlider
        height.text = "\(Int(slider.value))cm"
    }
    
    // Button的点击事件
    @IBAction func okTapped(_ sender: Any) {
        let nameVal = name.text
        let genderVal = getGender(index: gender.selectedSegmentIndex)
        let heightVal = height.text
        let age = getAge(date: birthday.date)
        let hasPropertyVal = hasProperty.isOn ? "有房" : "无房"
        result.text = "姓名：\(nameVal!)，\n性别：\(genderVal)，\n身高：\(heightVal!)，\n年龄：\(age)，\n\(hasPropertyVal)"
    }

    // UITextFieldDelegate，当点击键盘的“next”时，关闭键盘
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        name.resignFirstResponder()
        return true
    }

    // 获取用户年龄
    func getAge(date:Date) -> Int {
        let gregorian = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        
        let now = Date()
        
        let component = gregorian?.components(NSCalendar.Unit.year, from: birthday.date, to: now, options: NSCalendar.Options.matchStrictly)
        return component!.year!
    }
    
    // 获取用户性别
    func getGender(index:Int) -> String {
        return index == 0 ? "高富帅" : index == 1 ? "白富美" : "人妖"
    }
    
    func hehe() {
        
    }
    
    func haha() {
        
    }
}

