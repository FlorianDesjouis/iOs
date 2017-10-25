//
//  ViewController.swift
//  TicTacToe
//
//  Created by SUP'Internet 04 on 25/10/2017.
//  Copyright © 2017 SUP'Internet 04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func PlayBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showPlay", sender: nil)
        
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showPlay"){
        
        let nav = segue.destination as! UINavigationController
        
        let controller = nav.topViewController as! PlayController
        
        }
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

