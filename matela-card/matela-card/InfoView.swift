//
//  InfoView.swift
//  matela-card
//
//  Created by José Matela Neto on 30/06/22.
//

import SwiftUI

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
            RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }
            )
        .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "+55 85 98858 7043")
            .previewLayout(.sizeThatFits)
    }
}
