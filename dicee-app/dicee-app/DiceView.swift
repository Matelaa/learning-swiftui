//
//  DiceView.swift
//  dicee-app
//
//  Created by José Matela Neto on 30/06/22.
//

import SwiftUI

struct DiceView: View {
    
    let diceNumber: Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(diceNumber: 1)
            .previewLayout(.sizeThatFits)
    }
}
