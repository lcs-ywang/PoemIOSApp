//
//  ContentView.swift
//  PoemAPI
//
//  Created by Yining Wang on 2021-02-21.
//

import SwiftUI

struct ContentView: View {
    @State private var poem:String
    @State private var url:String = "https://www.poemist.com/api/v1/randompoems"
    
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
        
//        URLSession.shared.dataTask(with: url) { data, response, error in // Getting data to other posts
//                   if let data = data{
//                       if let posts = try? JSONDecoder().decode(AllContentPostViewData.self, from: data){ // Data model, data input
//                           // Update on the main thread
//                           DispatchQueue.main.async {
//                               self.posts = posts
//                               self.sortedImageURL += seperate_image_urls(data: self.posts!.Posts)
//                               self.sortedPost += seperate_data_from_data(data: self.posts!.Posts)
//
//                           }
//                           print(self.sortedImageURL)
//                           return
//                       }
//                   }
//               }.resume()
//        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
