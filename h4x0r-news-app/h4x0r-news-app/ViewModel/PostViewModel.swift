//
//  PostViewModel.swift
//  h4x0r-news-app
//
//  Created by José Matela Neto on 30/06/22.
//

import Foundation

class PostViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    var postService = PostService()
    
    func getPostsViewModel() {
        self.postService.getPosts { posts in
            self.posts = posts
            print(self.posts)
        }
    }
}
