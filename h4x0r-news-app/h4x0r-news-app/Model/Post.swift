//
//  Post.swift
//  h4x0r-news-app
//
//  Created by José Matela Neto on 30/06/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
