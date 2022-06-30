//
//  ContentView.swift
//  matela-card
//
//  Created by José Matela Neto on 30/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("matela")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.white, lineWidth: 5)
                    )
                Text("José Matela Neto")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(imageName: "phone.fill", text: "+55 85 98858 7043")
                InfoView(imageName: "envelope.fill", text: "jmatelaneto@gmail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
