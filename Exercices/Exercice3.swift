//
//  Exercice3.swift
//  Exercices
//
//  Created by SUP'Internet 08 on 28/09/2017.
//  Copyright © 2017 FlorianDesjouis. All rights reserved.
//

import Foundation


extension String {
    
    func toDate(format: String) -> Date {
        let format = DateFormatter()
        format.dateFormat = "YYYY-MM-DD";
        let date = format.date(from: self);
        return date!;
        
    }
    
}

extension Date {
    
    func toString(format: String)-> String {
        let format = DateFormatter()
        format.dateFormat = "YYYY-MM-DD";
        let date = format.string(from: self)
        return date;
    }
    
    func getYearDifferenceFrom(date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: date).year!
    }
    
}

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

class Existence {
    
    var birthday: Date
    var age: Int
    
    init(date: Date?) {
    }
    
    func willProbablyDieSoon() -> Bool{
        if age >= 100{
            return true
        }else {
            return false
        }
    }
}


class Person {
    
    
    enum Gender: String {
        
        case Male = "Male"
        case Female = "Female"
        case Other = "Other"
        
    }
    
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: (date: String, format: String)){
    }
    
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: Date){
        
    }
    
    var firstname: String;
    var lastname: String
    var gender: Gender
    var email: Email
    
    func show() {
        
        print("firstname : \(self.firstname) ")
        print("lastname : \(self.lastname) ")
        
        switch self.gender {
        case .Male:
            print("gender : Male")
        case .Female:
            print("gender : Male")
        case .Other:
            print("gender : Other")
        }
        
        print("email valid : \(self.email.isValid())")
        print("email : \(self.email)")
        
        print("birthdate : \(self.birthdate)")
        print("age : \(self.age)")
        print("will die soon : \(self.willProbablyDieSoon())")
        
    }
    
}
