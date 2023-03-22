//
//  Deck.swift
//  PokerGame
//
//  Created by 에디 on 2023/03/15.
//

import Foundation

class Deck: CardDeck {
    var cards: [Card]
    
    init() {
        self.cards = []
        self.reset()
    }
    
    func count() -> Int {
        cards.count
    }
    
    func shuffle() {
        // 무작위 인덱스 생성 : 0...cards개수-1을 담은 배열, randomElement로 하나 빼고, remove를 통해 뺀 것 제거..
        // 제거한 인덱스로 cards에 접근, result: [Cards]에 추가
        // 인덱스를 추출하는 배열이 빌 때까지 이 작업을 반복한다
        // cards에 result를 할당한다
        // 끝
        // O(n)
        var arr = Array(0..<cards.count)
        var result: [Card] = .init()
        
        // 2 미만 수의 카드는 섞을 수 없으므로 리턴
        guard cards.count >= 1 else { return }
        
        while arr.count != 0 {
            let randomIndex = arr.randomElement()!
            let removeIdx = arr.firstIndex(of: randomIndex)!
            arr.remove(at: removeIdx)
            result.append(cards[randomIndex])
        }
        cards = result
    }
    
    func removeOne() -> Card? {
        cards.popLast()
    }
    
    // 모든 카드를 덱에 담는 함수. 순서가 정해져 있다.
    func reset() {
        for shape in Shape.allCases {
            for rank in Rank.allCases {
                let card = Card(shape: shape, rank: rank)
                cards.append(card)
            }
        }
    }
}
