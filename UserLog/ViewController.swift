//
//  ViewController.swift
//  UserLog
//
//  Created by Yuriy  on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var userName: UITextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        }
   
    @IBAction func login(_ sender: Any) {
        if userName.text == "User" && passwordText.text == "Password"{
            performSegue(withIdentifier: "go", sender: nil)
        }
    }
    
    
    @IBAction func forgotName(_ sender: Any) {
        showAlert(title: "Your login", message: "User")
    }
    
    @IBAction func forgotPass(_ sender: Any) {
        showAlert(title: "Your password", message: "Password")
    }
   
}




extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {_ in}
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
