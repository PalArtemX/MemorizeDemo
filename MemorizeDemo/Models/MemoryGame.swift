//
//  MemoryGame.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import Foundation


struct MemoryGame<CardContent: Equatable> {
    struct Card: Identifiable {
        let id = UUID()
        var isMatched = false
        var isFaceUp = false
        let content: CardContent
    }
    
    private(set) var cards: [Card]
    
    private var indexOneAndOnlyFaceUpCard: Int? {
        get {
            cards.indices.filter ({ cards[$0].isFaceUp }).oneAndOnly
        }
        set {
            cards.indices.forEach { cards[$0].isFaceUp = ($0 == newValue) }
        }
    }
    
    // MARK: - Init
    init(numbersOfPairsOfCards: Int, cardContent: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0..<numbersOfPairsOfCards {
            cards.append(Card(content: cardContent(pairIndex)))
            cards.append(Card(content: cardContent(pairIndex)))
        }
        shuffle()
    }
    
    // MARK: - Functions
    
    mutating func choose(_ card: Card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }), !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched {
            if let potentialMatchIndex = indexOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                cards[chosenIndex].isFaceUp = true
            } else {
                
                indexOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    
}
