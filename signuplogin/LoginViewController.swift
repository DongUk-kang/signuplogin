//
//  LoginViewController.swift
//  signuplogin
//
//  Created by 강동욱 on 2021/10/07.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var userEmail: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // push -> pop
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func goToSignUp(_ sender: Any) {
       let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC")
        self.navigationController?.pushViewController(signUpVC!, animated: true)
    }
    
    
    @IBAction func successLogin(_ sender: Any) {
        
        if userEmail.text == "" || password.text == "" {
            let alert = UIAlertController(title: "확인", message: "가입정보확인", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "메세지확인", style: .cancel, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
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
