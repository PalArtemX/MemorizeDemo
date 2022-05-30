//
//  CardView.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGame<String>.Card
    let cornerRadius: Double = 25
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(lineWidth: 3, antialiased: true)
                Text(card.content)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(.indigo)
            }
            
           
        }
    }
}










struct CardView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        Group {
            CardView(card: Preview.card(isFaceUp: true))
                .previewLayout(.sizeThatFits)
            CardView(card: Preview.card(isFaceUp: false))
                .previewLayout(.sizeThatFits)
        }
        .aspectRatio(2/3, contentMode: .fit)
        .frame(width: 100)
        .padding()
    }
}
