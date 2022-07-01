//
//  PostService.swift
//  h4x0r-news-app
//
//  Created by José Matela Neto on 30/06/22.
//

import Foundation

class PostService: ObservableObject {
    
    @Published var posts = [Post]()
    
    func getPosts(completion: @escaping ([Post]) -> ()) {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                            let results = try decoder.decode(Results.self, from: data)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                                completion(self.posts)
                            }
                        } catch {
                            print("error: \(error)")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
