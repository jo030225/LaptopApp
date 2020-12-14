//
//  MainViewController.swift
//  LaptopApp
//
//  Created by 조주혁 on 2020/12/01.
//

import UIKit

class MainViewController: UIViewController {
    
    var count: Bool = false

    @IBOutlet weak var applicationBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        applicationBtn.layer.cornerRadius = 10
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func appClickBtn(_ sender: Any) {
        
        if (count) {
            applicationBtn.setTitle("노트북 신청", for: .normal)
            view.backgroundColor = .white
        } else {
            applicationBtn.setTitle("노트북 취소", for: .normal)
            view.backgroundColor = .green
        }
        count = !count
        
        
        
    }
    
}
