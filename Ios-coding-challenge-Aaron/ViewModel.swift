//
//  ViewModel.swift
//  Ios-coding-challenge-Aaron
//
//  Created by xcode on 7/28/22.
//

import Foundation
import SwiftUI
class ViewModel: ObservableObject {
    @Published var userz : [Userz] = []
    
    func fetchData(){
        //get url for the api to call from
        guard let url = URL(string: "https://mocki.io/v1/6f225a3e-7016-4d4b-aa9e-f9ddac92e2ce")else {return}
        //set tasks for data and error and dedo fine
       /* let tasks = URLSession.shared.dataTask(with: url){[weak self]( data, _, error) in
            let data = data, data == nil else {return
                //data == nil else{ return
                do{
                    //decode userz
                    let userz = try!
                    JSONDecoder().decode([Userz].self, from: data!)
                    DispatchQueue.main.async() {
                    
                        self?.userz = userz
                        //($0.first_name < $1.first_name)
                    }
                    
                }
                catch{
                    print("error")
                   
                }
            
            }
        //run tasks
        tasks.resume()
        }*/
    }
}

