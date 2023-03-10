//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ishaan Bhasin on 2/17/23.
//

import SwiftUI

class EmojiMermoryGame{
    static let emojis = ["đ", "đ", "đ", "đ", "đ", "đ", "đĩ", "đŠī¸", "đ", "đ", "đ°ī¸", "đ¤", "đ"]
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex]}
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var card: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    init(model: MemoryGame<String>) {
        self.model = model
    }
}
