//
//  Dealer.swift
//  PokerGameApp
//
//  Created by SONG on 2023/03/20.
//

import Foundation

class Dealer : Player {
    private var gameDeck : Deck
    
    init(_ gameDeck : Deck) {
        self.gameDeck = gameDeck
    }
}
