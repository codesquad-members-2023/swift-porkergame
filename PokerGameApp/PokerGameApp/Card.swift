//
//  Card.swift
//  PokerGameApp
//
//  Created by ilim on 2023/03/17.
//

import Foundation

class Card {
    private var cardSuit: Suits
    private var cardRank: Ranks
    
    init(suit: Suits, rank: Ranks) {
        cardSuit = suit
        cardRank = rank
    }
    
    func makeCard() -> String {
        return (cardSuit.rawValue + cardRank.rawValue)
    }
    
    func getSuit() -> Suits {
        return cardSuit
    }
    
    func getRank() -> Ranks {
        return cardRank
    }
}
