//
//  ViewController.swift
//  LaptopApp
//
//  Created by 조주혁 on 2020/11/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBtn.layer.cornerRadius = 8
        signupBtn.layer.cornerRadius = 8
    }


}

