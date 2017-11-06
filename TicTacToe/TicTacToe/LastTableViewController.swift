//
//  LastTableViewController.swift
//  TicTacToe
//
//  Created by SUP'Internet 01 on 06/11/2017.
//  Copyright © 2017 SUP'Internet 04. All rights reserved.
//

import Foundation
import UIKit

class LastTableViewController : UITableViewController {
    
    var data = Array<[String: String]>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(["dead": "Player 1", "winner": "Player 2"])
        data.append(["dead": "Player 1", "winner": "Player 2"])
        data.append(["dead": "Player 2", "winner": "Player 1"])
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LastCell", for: indexPath)
        
        let stat = data[indexPath.row]
        
        cell.textLabel?.text = "\(stat["winner"]!) Killed \(stat["dead"]!)"
        
        return cell
    }
}
