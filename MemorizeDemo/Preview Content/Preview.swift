//
//  Preview.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import Foundation


struct Preview {
    static func card(isFaceUp: Bool, content: String = "😀") -> MemoryGame<String>.Card {
        MemoryGame<String>.Card(isFaceUp: isFaceUp, content: content)
    }
}

