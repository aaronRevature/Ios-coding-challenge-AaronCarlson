//
//  ContentView.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
   
   
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.userz, id: \.self){ users in
                    
                        VStack{
                           
                          
                               
                            NavigationLink(destination: SwiftUIView()) {
                                
                                VStack{
                                   
                                    Text("UserID:" + String(users.id))
                                    HStack{
                                        Text("Name:")
                                         Text(users.first_name ?? "Name")
                                        .padding(5)
                                    }
                            
                                .padding(20)
                                HStack{
                                    VStack{
                                    Text("Email:")
                                       
                                    Text(users.email)
                                    }
                                }
                                }.buttonStyle(PlainButtonStyle())
                        }
                        }
                    }
                
            }
        }
    
            .navigationTitle("USER APPLICATION")
            .onAppear(){
                viewModel.fetchData()
            }
}
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    
}
}

