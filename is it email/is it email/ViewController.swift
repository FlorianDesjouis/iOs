//
//  ViewController.swift
//  is it email
//
//  Created by SUP'Internet 01 on 02/10/2017.
//  Copyright © 2017 Florian Desjouis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func checkEmailButton(_ sender: UIButton) {
        
        if let text = self.emailTextField.text {
            let email = Email(email: text)
            
            if email.isValid(){
                print("It is valide !")
                let alert = UIAlertController(title: "Welcome", message: "The email \(email) is valid ", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { data in
                
                    self.performSegue(withIdentifier: "showEmailModally", sender: self)
                    
                }))
                
                self.present(alert, animated: true, completion: nil)
            }
            else {
                print("It is not valid")
            }
        }
        
        print(self.emailTextField.text ?? "No value")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

