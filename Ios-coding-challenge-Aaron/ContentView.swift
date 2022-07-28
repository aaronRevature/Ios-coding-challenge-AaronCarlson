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
               
                VStack{
                   /* ForEach(userz, in Userz){_userz in
                    */
                    navigationTitle(
                    Text("USER APPLICATION")
                    )
                    HStack{
                    Text("UserID:")
                    Text("Int(viewModel.userz.id)")
                    }
                    HStack{
                    Text("Name:")
                    Text("userz.first_name")
                    }
                    HStack{
                    Text("email:")
                    Text("userz.first_name")
                    }
                    }
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

