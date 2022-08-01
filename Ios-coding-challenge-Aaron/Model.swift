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
  "group_name": String,
 "designation": String
 */
//define model for User Application


struct Userz: Codable, Hashable {
   
    let id: Int
    let email: String
    let first_name: String?
    let last_name: String
    let group_name: String
    let designation: String?
    
}

enum CodingKeys: String, CodingKey {
    case id = "id"
    case first_name = "first_name"
    case email = "email"
    case last_name = "last_name"
    case group_name = "group_name"
    case designation = "designation"
}
