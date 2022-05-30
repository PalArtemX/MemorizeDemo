//
//  CardView.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGame<String>.Card
    let shape = RoundedRectangle(cornerRadius: 15)
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 3, antialiased: true)
                Text(card.content)
                    .font(.largeTitle)
            } else {
                shape
                    .foregroundColor(.indigo)
            }
        }
    }
}










struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(card: Preview.card(isFaceUp: true))
                .previewDisplayName("isFaceUp = true")
                .previewLayout(.sizeThatFits)
            CardView(card: Preview.card(isFaceUp: true, content: "⚽️"))
                .previewDisplayName("isFaceUp = true")
                .previewLayout(.sizeThatFits)
            CardView(card: Preview.card(isFaceUp: false))
                .previewDisplayName("isFaceUp = false")
                .previewLayout(.sizeThatFits)
        }
        .aspectRatio(2/3, contentMode: .fit)
        .frame(width: 100)
        .padding()
    }
}
