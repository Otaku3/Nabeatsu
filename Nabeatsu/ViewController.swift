//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 && !(number % 7 == 0) {
            return true
        }
        
        //        // 問題2: 1の位が3かどうか調べる
        //        if number % 10 == 3{
        //            return true
        //        }
        //        // 問題3: 10の位が3かどうか調べる
        //        if number / 10 % 3 == 3{
        //            return true
        //        }
        
        // 問題4: 3がつくかどうか調べる
        var checkNum: Int = number
        while checkNum != 0 {
            if checkNum % 10 == 3 && !(number % 7 == 0){
                return true
            }
            else{
                checkNum = checkNum/10
            }
        }
        
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        
        
        return false
    }
    
    func isDog() -> Bool{
        if number % 5 == 0{
            return true
        }
        return false
    }
    
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            if isDog() == true{
                faceLabel.text = "U°∀°U"
            }
            else{
                faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
            }
        } else {
            if isDog() == true{
                faceLabel.text = "U・x・U"
            }
            else{
                faceLabel.text = "(゜o゜)"
            }
        }
        
    }
    
    @IBAction func clear(){
        number = 0
        countLabel.text = String(number)
        faceLabel.text = "(゜o゜)"
    }
    
    
}

