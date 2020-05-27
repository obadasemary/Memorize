//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Abdelrahman Mohamed on 26.05.2020.
//  Copyright © 2020 Abdelrahman Mohamed. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {

    @Published private(set) var model: MemoryGame<String> = createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {

        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }

    // MARK: - Access to the Model

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

    // MARK: - Intents(s)

    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
