//
//  DetailView.swift
//  h4x0r-news-app
//
//  Created by José Matela Neto on 30/06/22.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: self.url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com.br")
    }
}
