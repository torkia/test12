//
//  ViewController.swift
//  Sample01
//
//  Created by k on 2018/09/30.
//  Copyright © 2018年 torkia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // viewの背景色を設定
        self.view.backgroundColor = UIColor.blue
        
        // ラベル作成
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        label.center = view.center
        label.text = "★"
        label.font = UIFont.systemFont(ofSize: 100.0)
        label.textAlignment = .center
        label.textColor = UIColor.yellow
        self.view.addSubview(label)
        
        
        // ボタン作成
        let button = UIButton()
        button.frame = CGRect(x: (view.frame.width-80)/2, y: 400, width: 80, height: 30)
        button.setTitle("PushMe", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitleColor(UIColor.magenta, for: .highlighted)
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    
    // ボタンアクション
    func buttonAction(sender: AnyObject) {
        // ボタンが押されたらカウントアップさせて表示切り替えする
        count += 1
        if count % 2 == 0 {
            label.text = "★"
        } else {
            label.text = "●"
        }
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

