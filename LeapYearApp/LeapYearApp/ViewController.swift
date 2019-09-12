//
//  ViewController.swift
//  LeapYearApp
//
//  Created by 窪田　彬人 on 2019/09/09.
//  Copyright © 2019 窪田　彬人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeapLabel: UILabel!

    @IBOutlet weak var userInputTextField: UITextField!
    
    override func  viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func decide(_ sender: Any) {
    
        guard
            let age = userInputTextField.text,
            let num = Int(age)else{
                LeapLabel.text = "表示できません"
                return
        }
        // userInputTextField.textの値をIntに変換してあげる
        LeapLabel.text = LeapYear(num)
        
    }
    

    func LeapYear(_ year: Int) -> String{
        let LeapYear = ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
        if LeapYear{
            return "閏年です。"
        }else{
            return "閏年ではありません。"
        }
    
}
}
