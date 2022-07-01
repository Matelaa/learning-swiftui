//
//  ContentView.swift
//  h4x0r-news-app
//
//  Created by José Matela Neto on 30/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = PostViewModel()
    
    var body: some View {
        NavigationView {
            List(self.viewModel.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("H4X0R")
        }
        .onAppear {
            self.viewModel.getPostsViewModel()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
