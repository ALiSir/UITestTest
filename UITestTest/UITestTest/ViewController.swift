//
//  ViewController.swift
//  UITestTest
//
//  Created by ALiSir_Mac on 17/6/1.
//  Copyright © 2017年 ALiSir_Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var pwdText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func toPage(_ sender: Any) {
        if userText.text == "123" && pwdText.text == "123" {
            self.present(LoginSuc(), animated: true, completion: nil)
        }else{
            let alertMsg = UIAlertController(title: "错误提示", message: "用户名或密码错误!", preferredStyle: .alert)
            alertMsg.addAction(UIAlertAction(title: "确定", style: .cancel, handler: nil))
            self.present(alertMsg, animated: true, completion: nil)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

