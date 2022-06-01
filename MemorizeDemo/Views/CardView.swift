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
                    Pie(startAngle: Angle(degrees: 0 - 90), endAngle: Angle(degrees: 110 - 90))
                        .frame(height: geometry.size.height * 0.80)
                        .foregroundColor(.indigo)
                        .opacity(0.2)
                    
                } else if card.isMatched {
                    shape
                        .opacity(0)
                    
                } else {
                    shape
                        .foregroundColor(.indigo)
                }
                
                Text(card.content)
                    .rotationEffect(Angle(degrees: card.isMatched ? 360 : 0))
                    .animation(Animation.spring(response: 2, dampingFraction: 0.1, blendDuration: 1), value: card.isMatched)
                    .font(.system(size: min(geometry.size.width, geometry.size.height) * 0.6))
                    .opacity(card.isFaceUp ? 1 : 0)
            }
            .rotation3DEffect(Angle(degrees: card.isFaceUp ? 0 : 180), axis: (x: 0, y: 1, z: 0))
        }
        .scaledToFit()
    }
}










struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(card: Preview.card(isFaceUp: true))
                .preferredColorScheme(.dark)
                .previewDisplayName("isFaceUp == true")
                .previewLayout(.sizeThatFits)
            CardView(card: Preview.card(isFaceUp: true, content: "⚽️"))
                .previewDisplayName("isFaceUp == true")
                .previewLayout(.sizeThatFits)
            CardView(card: Preview.card(isFaceUp: false))
                .previewDisplayName("isFaceUp == false")
                .previewLayout(.sizeThatFits)
        }
        .frame(width: 100, height: 100)
        .padding()
    }
}
