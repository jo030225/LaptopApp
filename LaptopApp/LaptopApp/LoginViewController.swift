//
//  LoginViewController.swift
//  LaptopApp
//
//  Created by 조주혁 on 2020/11/27.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBtn.layer.cornerRadius = 8
        signupBtn.layer.cornerRadius = 8
    }
    @IBAction func loginDoneBtn(_ sender: Any) {
        let goMain = self.storyboard?.instantiateViewController(identifier: "MainViewController")
        goMain?.modalPresentationStyle = .fullScreen
        present(goMain!, animated: true, completion: nil)
    }
    

}

