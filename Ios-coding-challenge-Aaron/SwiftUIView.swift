//
//  SwiftUIView.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import SwiftUI

struct SwiftUIView: View {
    @StateObject var viewModel = ViewModel()
    
    
    var body: some View {
        NavigationView {
           
            List{
               
                ForEach(viewModel.userz, id: \.self){userz in
                VStack {
                    navigationTitle(userz.first_name!)
                    HStack{
                        Text("UserID:")
                        let id = (String(userz.id))
                        Text(String(id))
                    }
                    HStack{
                    Text("Group Name")
                        Text(userz.group_name)
                    }
                    HStack{
                    Text("Designation:")
                      Text(userz.designation!)
                    }.buttonStyle(PlainButtonStyle())
                    
            }
            }
        }
            .navigationTitle("users account")
            .onAppear(){
                viewModel.fetchData()
            }
    }
}
    }
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}


