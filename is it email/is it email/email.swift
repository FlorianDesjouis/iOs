//
//  email.swift
//  is it email
//
//  Created by SUP'Internet 01 on 02/10/2017.
//  Copyright © 2017 Florian Desjouis. All rights reserved.
//

import Foundation


struct Email {
    
    var email: String?
    
    init(email: String){
        self.email = email
    }
    
    func isValid() -> Bool{
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let checkEmail = NSPredicate(format:"SELF MATCHES %@", regEx)
        
        return checkEmail.evaluate(with: self.email)
    }
    
}
