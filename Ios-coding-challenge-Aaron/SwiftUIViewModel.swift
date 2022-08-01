//
//  SwiftUIViewModel.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import SwiftUI

class SwiftUIViewModel: ObservableObject {
    
    @Published var first_name: String = "first_name"
    @Published var last_name: String = "last_name"
    @Published var group_name: String = "group_name"
    @Published var designation: String = "designation"
    
    
}
