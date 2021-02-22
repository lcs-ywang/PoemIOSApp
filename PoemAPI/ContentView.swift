//
//  ContentView.swift
//  PoemAPI
//
//  Created by Yining Wang on 2021-02-21.
//

import SwiftUI

struct ContentView: View {
    @State private var poem:String
    @State private var url:String, = "https://www.poemist.com/api/v1/randompoems"
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section(header:Text("Something ")){
                        Text("Poem")
                    }
                    
                    Section(header:Text("Something Else")){
                        Text("Button")
                    }
                    
                }
                
            }
        }
        .navigationBarTitle("Poem")
    }
    
    func pullData(){
        guard let url = URL(string: self.url) else {
            return
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
