//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by shgtkshruch on 2016/06/29.
//  Copyright © 2016年 shgtkshruch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    @IBAction func getOmikuji(sender: AnyObject) {
        let results = [
            "大吉",
            "吉",
            "中吉",
            "凶",
            "大凶"
        ]
        
        let random = arc4random_uniform(UInt32(results.count))
        
        if random == 0 {
            myLabel.textColor = UIColor.redColor()
        } else {
            myLabel.textColor = UIColor.blackColor()
        }
        
        self.myLabel.text = results[Int(random)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

