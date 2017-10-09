//
//  ModalViewController.swift
//  Random User
//
//  Created by SUP'Internet 13 on 09/10/2017.
//  Copyright © 2017 FlorianDesjouis. All rights reserved.
//

import UIKit

class ModalViewController :  UIViewController {
    
    var person = Person.init(firstname: "Guy", lastname: "Leduc", gender: Person.Gender(rawValue: "Male")!, email: "guyleduc@gmail.com", birthdate: (date: "09-09-1987", format: "DD-MM-YYYY"))
    
    @IBOutlet weak var firstnameLabel: UILabel!    
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var birthdateLabel: UILabel!
}
