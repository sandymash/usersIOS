//
//  User.swift
//  users
//
//  Created by sandy mashinsky on 13/05/2022.
//

import Foundation

class User {
    var name = ""
    var id = ""
    var phone = ""
    var adress = ""
    
    init(name:String, id:String, phone:String, adress:String){
        self.name = name
        self.id = id
        self.phone = phone
        self.adress = adress
    }
}
