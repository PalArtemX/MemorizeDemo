//
//  MemoryGame.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import Foundation


struct MemoryGame<CardContent> {
    
    struct Card: Identifiable {
        var id = UUID()
        var isMatched = false
        var isFaceUp = false
        var content: CardContent
    }
    
    private(set) var cards: [Card]
    
    
    init(numbersOfPairsOfCards: Int, cardContent: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0..<numbersOfPairsOfCards {
            cards.append(Card(content: cardContent(pairIndex)))
            cards.append(Card(content: cardContent(pairIndex)))
        }
    }
    
    
    func choose(_ card: Card) {
        
    }
}
