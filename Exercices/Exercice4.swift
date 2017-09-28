//
//  Exercice4.swift
//  Exercices
//
//  Created by SUP'Internet 08 on 28/09/2017.
//  Copyright © 2017 FlorianDesjouis. All rights reserved.
//

import Foundation


class ApiManager {
    
    var baseURL: String = "https://api.randomuser.me/"
    
    func getRandomUser(completion: @escaping(Any) -> Void){
        var request = URLRequest(url: URL(string: baseURL)!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request){
            data, response, err in
            
            do {
                completion(data!)
            } catch let error as Error {
                print(error)
            }
        }.resume()
    }
    
    getRandomUser(completion){ data in
        print(data)
    }

}
