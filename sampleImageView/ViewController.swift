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

    
    
    @IBAction func mybutton01(_ sender: UIButton) {
        myImageView.image = UIImage(named:"togaminnnn01.png")
    }
    
    
    @IBAction func mybutton02(_ sender: UIButton) {
        myImageView.image = UIImage(named:"togaminnnn02.png")
    }
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

