//
//  SwiftUIView.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import SwiftUI

struct SwiftUIView: View {
    var viewModel = ViewModel()
    var users = [Userz]()
    var first_name = ""
    var last_name = ""
    
    
    var body: some View {
        NavigationView {
           List{
               ForEach(viewModel.userz, id: \.self){users in
                VStack {
                   Text("user")
                    HStack{
                    Text("Group Name")
                        Text(users.group_name)
                    }
                    HStack{
                    Text("Designation:")
                      Text(users.designation!)
                    }.buttonStyle(PlainButtonStyle())
                    
                   }
                }
            }
        }
            .navigationTitle(first_name + last_name)
            .onAppear(){
                viewModel.fetchData()
                
            }
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}


