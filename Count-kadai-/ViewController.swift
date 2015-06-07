//
//  ViewController.swift
//  Count-kadai-
//
//  Created by 坂本葉 on 2015/06/07.
//  Copyright (c) 2015年 YouSakamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var faceLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    var number:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isAho() -> Bool {
        if (number % 3 == 0 || number % 10 == 3 || number / 10 % 10 == 3) {
            return true;
        } else {
            return false;
        }
        
        
    }
    
   
    
    func plus(sender: AnyObject) {
        number = number + 1
        label.text = String(number)
        
       
        if isAho() {
            faceLabel.text = "アホ😍"
            label.textColor = UIColor.blueColor()
        } else if (number % 2 == 0){
            faceLabel.text = "普通"
            label.textColor = UIColor.redColor()
        } else {
            faceLabel.text = ""
            label.textColor = UIColor.blackColor()
        }
        
    }
    
    
    
    
    func minus(sender: AnyObject) {
        number = number - 1
        label.text = String(number)
        
        if isAho() {
            faceLabel.text = "アホ😍"
            label.textColor = UIColor.blueColor()
        } else if (number % 2 == 0){
            faceLabel.text = "普通"
            label.textColor = UIColor.redColor()
        } else {
            faceLabel.text = ""
            label.textColor = UIColor.blackColor()
        }
        

    }
    
}
