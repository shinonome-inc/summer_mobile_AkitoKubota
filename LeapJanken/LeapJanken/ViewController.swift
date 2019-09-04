//
//  ViewController.swift
//  LeapJanken
//
//  Created by 窪田　彬人 on 2019/09/04.
//  Copyright © 2019 窪田　彬人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //閏年判定
        func LeapYear(_ year: Int) {
            let LeapYear = ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
            if LeapYear{
                print("閏年です。")
            }else{
                print("閏年ではありません。")
            }
            
            
        }
        //入力例
        LeapYear(2020)
        LeapYear(500000000)
        
        
        //じゃんけん
        //(a-b+3)%3の１行でジャンケンを判定できる
        //ヒントで教えてもらったenum 不使用ver
        
        //var goo = 0
        //var choki = 1
        //var pa = 2
        //
        //let enemyhand = Int.random(in: 0..<3)
        //func Janken(hand:Int){
        //    let Janken = (hand - enemyhand + 3) % 3
        //    if Janken == 0{
        //        print("あいこです。")
        //    }else if Janken == 2{
        //        print("勝ちです。")
        //    }else {
        //        print("負けです。")
        //    }
        //}
        //入力例
        
        //Janken(hand:goo)
        
        
        //enum 使用ver
        let enemyhand = Int.random(in: 0..<3)
        enum Hand: Int{
            case goo = 0
            case choki = 1
            case pa = 2
        }
        func Janken(Hand: Int){
            let Janken = (Hand - enemyhand + 3) % 3
            switch Janken {
            case 0:
                print("あいこです。")
            case 1:
                print("負けです。")
            case 2:
                print("勝ちです。")
            default :
                print("わかりません。")
            }
        }
        
        Janken(Hand: Hand.goo.rawValue)

        
        
    }


}

