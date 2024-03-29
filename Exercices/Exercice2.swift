//
//  Exercice2.swift
//  Exercices
//
//  Created by SUP'Internet 06 on 21/09/2017.
//  Copyright © 2017 FlorianDesjouis. All rights reserved.
//

import Foundation


func cleanHobbits(_ arr: Array<String>) -> (String, String, Array<String>, Int){
    var arr = arr
    let first = arr[0]
    let last = arr.last
    
    arr.removeFirst()
    arr.removeLast()
    
    var reversedNames = [String]()
    
    for arrayIndex in stride(from: (arr.count - 1), through: 0, by: -1) {
        reversedNames.append(arr[arrayIndex])
    }
    
    return(first, last!, reversedNames, reversedNames.count)
}
