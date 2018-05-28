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
        
        let randomNum = Int(arc4random_uniform(5))
        print(randomNum)
        let messageList:[String] = ["強み発見","ブログ読んでね","とがみんブログ","人間というゲーム","超人的能力を授かった人間"]
        print(messageList[randomNum])
        var blogMessage = messageList[randomNum]
        
        
        //alertを作る
        let alertController = UIAlertController(title: "今日の写真", message:blogMessage, preferredStyle: .alert)
        //以下で見え方が変わる。
        //preferredStyle:.actionSheet
        //preferredStyle:.alert
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.myImageView.image = UIImage(named:"togaminnnn0\(randomNum)")
            print(randomNum)}))
        alertController.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: {action in print("キャンセル")}))
        
        present(alertController,animated: true,completion: {()->Void in
            print("表示されたよん")
        })//completionは動作完了時に発動。
        
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

