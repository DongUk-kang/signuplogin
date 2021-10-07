//
//  FindPassWordViewController.swift
//  signuplogin
//
//  Created by 강동욱 on 2021/10/07.
//

import UIKit

class FindPassWordViewController: UIViewController {
    
    
    @IBOutlet weak var userEmail: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func sendBtn(_ sender: Any) {
        if userEmail.text == "" {
            let alert = UIAlertController(title: "확인", message: "빈칸있음", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
        navigationController?.popViewController(animated: true)
            
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
