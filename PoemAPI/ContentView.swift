//
//  ContentView.swift
//  PoemAPI
//
//  Created by Yining Wang on 2021-02-21.
//

import SwiftUI

struct ContentView: View {
    @State private var poem:[poemData] = [poemData(title: "Loading", content: "Loading", url: "Loading", poet: poetData(name: "Loading", url: "Loading"))]
    @State private var url:String = "https://www.poemist.com/api/v1/randompoems"
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Section(header:Text("Something Else")){
                        Button(action: {pullData()}, label: {
                            Text("New Poems")
                        })
                    }
                    
                    ForEach(0..<self.poem.count, id:\.self){ num in
                        Section(header:Text("A poem")){
                            Text("\(String(poem[num].title))")
                            Text("\(String(poem[num].content))")

                        }
                    }
                    
                    
                }
                
            }
        }
        .onAppear(perform: pullData)
        .navigationBarTitle("Poem")
    }
    
    func pullData(){
        guard let url = URL(string: self.url) else {
            return
        }
        
        var request = URLRequest(url: url)
        request.setValue("application/json",
                         forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else{
                return
            }
            
            if let poems = try? JSONDecoder().decode([poemData].self, from: data){
                self.poem = poems
                return
            }
        }.resume()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
