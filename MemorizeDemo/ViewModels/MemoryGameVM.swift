//
//  MemoryGameVM.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import Foundation


class MemoryGameVM: ObservableObject {
    private static let emojis = ["⚽️", "🏀", "🏈", "⚾️", "🥎", "🎾", "🏐", "🏉", "🥏", "🎱", "🪀", "🏓"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numbersOfPairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private(set) var memoryGame = createMemoryGame()
    
    
    // MARK: - Functions
    func choose(_ card: MemoryGame<String>.Card) {
        memoryGame.choose(card)
    }
}