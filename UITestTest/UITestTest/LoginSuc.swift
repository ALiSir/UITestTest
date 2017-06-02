//
//  LoginSuc.swift
//  UITestTest
//
//  Created by ALiSir_Mac on 17/6/2.
//  Copyright © 2017年 ALiSir_Mac. All rights reserved.
//

import UIKit

class LoginSuc: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let titleLabel = UILabel(frame: CGRect(x: 50, y: 200, width: 200, height: 50))
        titleLabel.text = "我是主页面！"
        
        self.view.addSubview(titleLabel)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
