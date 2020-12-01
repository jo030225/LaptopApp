//
//  SignUpViewController.swift
//  LaptopApp
//
//  Created by 조주혁 on 2020/12/01.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var done: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        done.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancleBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
}
