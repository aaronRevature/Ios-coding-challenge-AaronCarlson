//
//  SwiftUIView.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import SwiftUI

struct SwiftUIView: View {
    @StateObject var viewModel = ViewModel()
    var last_name = ""
    
    
    var body: some View {
        NavigationView {
           List{
               ForEach(viewModel.userz, id: \.self){users in
                VStack {
                    Text(String(users.id))
                    Text("First Name")
                    Text(users.first_name ?? "name")
                    Text("Last Name")
                    Text(users.last_name)
                    
                    HStack{
                        Text("Group Name")
                        Text(users.group_name)
                      
                    }
                    HStack{
                    Text("Designation:")
                        Text(users.designation ?? "des")
                    }.buttonStyle(PlainButtonStyle())
                    
                   }
                }
            }
        }
        .navigationTitle("Name:" + last_name)
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


