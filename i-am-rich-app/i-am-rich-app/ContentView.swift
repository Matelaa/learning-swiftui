//
//  ContentView.swift
//  i-am-rich-app
//
//  Created by José Matela Neto on 30/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("I'am Rich")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
