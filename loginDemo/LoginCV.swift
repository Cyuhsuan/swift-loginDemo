//
//  ViewController.swift
//  loginDemo
//
//  Created by 張宇軒 on 2022/4/2.
//

import UIKit

class LoginCV: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var accountField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "succeed" {
            let account = self.accountField.text ?? ""
            let password = self.passwordField.text ?? ""
            if account.isEmpty {
                self.errorLabel.text="請輸入帳號"
                return false
            }else if password.isEmpty {
                self.errorLabel.text="請輸入密碼"
                return false
            }
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "succeed" {
            if let destination = segue.destination as? SuccessVC {
                destination.text = "登入成功"
            }
        }
    }
}

