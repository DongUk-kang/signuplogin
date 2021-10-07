//
//  SignUpViewController.swift
//  signuplogin
//
//  Created by 강동욱 on 2021/10/07.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var userID: UITextField!
    
    
    @IBOutlet weak var userEmail: UITextField!
    
    
    @IBOutlet weak var PhoneNumber: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBOutlet weak var ConfirmPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func successSignup(_ sender: Any) {
        
        if userID.text == "" || userEmail.text == "" || PhoneNumber.text == "" || Password.text == "" {
            let alert = UIAlertController(title: "가입오류", message: "빈칸이있습니다", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            return
        }  else if Password.text != ConfirmPassword.text {
           let alertVC = UIAlertController(title: "비밀번호확인", message: "비밀번호불일치", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            alertVC.addAction(okAction)
            self.present(alertVC, animated: true, completion: nil)
            return
        }
            
        print(userEmail.text!)
    
        
        
        
    }
    
    // push -> pop
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
    
    // 화면 전환시 전환할 스토리보드 id지정후 적용, 화면이동 코드 
    @IBAction func goToLogin(_ sender: Any) {
       let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        self.navigationController?.pushViewController(loginVC!, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
