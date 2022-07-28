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
                
                VStack {
                    navigationTitle("userz.first_name")
                    HStack{
//userz. are placeholders because I forgot
// the correct way to call from json :/
                    Text("UserID:")
                    Text("userz.id")
                    }
                    HStack{
                    Text("Group Name")
                    Text("userz.group")
                    }
                    HStack{
                    Text("Designation:")
                
                    Text("userz.designation")
                    }
                    
            }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
