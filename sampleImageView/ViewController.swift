//
//  ViewController.swift
//  sampleImageView
//
//  Created by 戸上　祐希 on 2018/05/25.
//  Copyright © 2018年 Togami Yuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myImageView.image = UIImage(named:"togaminnnn02.png")
    }


    
    @IBAction func imgbutton(_ sender: UIButton) {
        var randomNum = arc4random_uniform(5)
        myImageView.image = UIImage(named:"togaminnnn0\(randomNum)")
        print(randomNum)
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

