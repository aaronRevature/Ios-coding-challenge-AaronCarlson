//
//  SwiftUIViewModel.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import SwiftUI

class SwiftUIViewModel: ObservableObject {
    @Published var first_name: String = ""
    @Published var last_name: String = ""
    @Published var group_name: String = ""
    @Published var designation: String = ""
    
    
}
