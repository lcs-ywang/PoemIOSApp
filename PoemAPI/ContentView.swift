//
//  ContentView.swift
//  PoemAPI
//
//  Created by Yining Wang on 2021-02-21.
//

import SwiftUI

struct ContentView: View {
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
