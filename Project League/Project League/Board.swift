//
//  Board.swift
//  Project League
//
//  Created by Fabio Pereira on 20/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class Board {
    
    var firstCard:Card
    var secondCard:Card
    
    init(){
        self.firstCard = Card()
        self.secondCard = Card()
    }
        
    func retrieveCardInformation(cardId:UInt32) -> Card {
        switch cardId {
        case 1:
            return(Card(id:1, name: "Ashe", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 2:
            return(Card(id:2, name: "Blitzcrank", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 3:
            return(Card(id:3, name: "Annie", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 4:
            return(Card(id:4, name: "Evelynn", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 5:
            return(Card(id:5, name: "Dr. Mundo", attack: 1, defense: 1, hability: 2, difficulty: 2))
        default:
            return(Card(id:666, name: "Teemo", attack: 0, defense: 0, hability: 0, difficulty: 0))
        }
    }
    
    func dealCards() -> (Card, Card) {
        let firstCardId = UtilMethods.generateRandomCardId()
        var secondCardId = UtilMethods.generateRandomCardId()
        
        while(secondCardId == firstCardId){
            secondCardId = UtilMethods.generateRandomCardId()
        }
        
        let firstCard:Card = retrieveCardInformation(firstCardId)
        let secondCard:Card = retrieveCardInformation(secondCardId)
        
        return(firstCard, secondCard)
    }
}