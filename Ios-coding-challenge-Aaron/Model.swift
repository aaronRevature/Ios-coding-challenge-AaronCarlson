//
//  Model.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import Foundation
/*
 "id": integer,
 "email": String,
 "first_name": String,
 "last_name": String,
  "group_name": String,                                                                             "designation": String
 */
//define model for User Application
struct Userz: Codable{
var userz : [Userz]
}

struct userz: Codable, Hashable {
    var id: Int
    var email: String
    var first_name: String
    var last_name: String
    var group_name: String
    var designation: String
    
}
