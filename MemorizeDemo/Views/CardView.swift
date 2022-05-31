//
//  CardView.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGame<String>.Card
    let shape = Circle()
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if card.isFaceUp {
                    shape
                        .fill()
                        .foregroundColor(.white)
                    shape
                        .strokeBorder(lineWidth: 2, antialiased: true)
                        .foregroundColor(.indigo)
                    Text(card.content)
                        .font(.system(size: min(geometry.size.width, geometry.size.height) * 0.7))
                        
                } else if card.isMatched {
                    shape
                        .opacity(0)
                } else {
                    shape
                        .foregroundColor(.indigo)
                }
            }
        }
        .scaledToFit()
    }
}










struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(card: Preview.card(isFaceUp: true))
                .preferredColorScheme(.dark)
                .previewDisplayName("isFaceUp = true")
                .previewLayout(.sizeThatFits)
            CardView(card: Preview.card(isFaceUp: true, content: "⚽️"))
                .previewDisplayName("isFaceUp = true")
                .previewLayout(.sizeThatFits)
            CardView(card: Preview.card(isFaceUp: false))
                .previewDisplayName("isFaceUp = false")
                .previewLayout(.sizeThatFits)
        }
        .frame(width: 100, height: 100)
        .padding()
    }
}
