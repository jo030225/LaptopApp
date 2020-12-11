//
//  SignUpViewController.swift
//  LaptopApp
//
//  Created by 조주혁 on 2020/12/01.
//

import UIKit
import Alamofire

class SignUpViewController: UIViewController {

    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var nameData: String = ""
    var idData: String = ""
    var passwordData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        done.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    func testJson(name: String, id: String, password: String) {
        let URL = "http://192.168.137.1:3000/post-server"
        
        
        let PARAM: Parameters = [
            "name": name,
            "id": id,
            "password": password,
        ]
        //위의 URL와 파라미터를 담아서 POST 방식으로 통신하며, statusCode가 200번대(정상적인 통신) 인지 유효성 검사 진행
        let alamo = AF.request(URL, method: .post, parameters: PARAM).validate(statusCode: 200..<300)
        //결과값으로 문자열을 받을 때 사용
        alamo.responseString() { response in
            switch response.result
            {
            //통신성공
            case .success(let value):
                print("value: \(value)")
            //통신실패
            case .failure(let error):
                print("error: \(String(describing: error.errorDescription))")
                //  self.resultLabel.text = "\(error)"
                print("\(error)")
            }
        }
        
    }
    
    @IBAction func cancleBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        nameData = name.text!
        idData = id.text!
        passwordData = password.text!
        testJson(name: nameData, id: idData, password: passwordData)
    }
}
