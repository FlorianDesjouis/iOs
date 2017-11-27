//
//  PlayController.swift
//  TicTacToe
//
//  Created by SUP'Internet 04 on 25/10/2017.
//  Copyright © 2017 SUP'Internet 04. All rights reserved.
//

import UIKit

class PlayController: UIViewController {

    var activePlayer = 1
    
    @IBAction func pressButton(_ sender: AnyObject) {
        
        if(activePlayer == 1){
            sender.setImage(UIImage(named: "cross.png"), for: UIControlState())
            activePlayer = 2
        }else{
            sender.setImage(UIImage(named: "nought.png"), for: UIControlState())
            activePlayer = 1
        }
        let disableMyButton = sender as? UIButton
        disableMyButton?.isEnabled = false
        
    }
    
    @IBAction func dismissBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
