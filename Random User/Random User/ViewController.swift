//
//  ViewController.swift
//  Random User
//
//  Created by SUP'Internet 13 on 09/10/2017.
//  Copyright © 2017 FlorianDesjouis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let api = ApiManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goButtonPressed(_ sender: UIButton) {
        
        api.getRandomUserHydratedWithPerson(completion: { person in self.performSegue(withIdentifier: "showModal", sender: self)
        })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showModal"){
           var modalViewController = segue.destination as! ModalViewController
            
            modalViewController.person = sender as! Person
        }
    }

}

