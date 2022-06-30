//
//  ContentView.swift
//  h4x0r-news-app
//
//  Created by José Matela Neto on 30/06/22.
//

import SwiftUI

let posts: [Post] = [
    Post(id: "1", title: "Hacker News 1"),
    Post(id: "2", title: "Hacker News 2"),
    Post(id: "3", title: "Hacker News 3")
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("H4X0R")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
