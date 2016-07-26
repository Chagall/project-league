//
//  Board.swift
//  Project League
//
//  Created by Fabio Pereira on 20/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class Board {
    
    var firstCard:NormalCard
    var secondCard:NormalCard
    
    init(){
        self.startGame()
    }
    
    func startGame() {
        var firstCardId:UInt32
        var secondCardId:UInt32
        
        firstCardId = generateRandomCardId()
        secondCardId = generateRandomCardId()
        
        while(secondCardId == firstCardId){
            secondCardId = generateRandomCardId()
        }
        
        firstCard = retrieveNormalCardInformation(firstCardId)
        secondCard = retrieveNormalCardInformation(secondCardId)
        
    }
    
    func generateRandomCardId() -> UInt32 {
        let cardId = arc4random_uniform(5) + 1
        return(cardId)
    }
    
    func retrieveNormalCardInformation(cardId:UInt32) -> NormalCard {
        switch cardId {
        case 1:
            return(NormalCard(id:1, name: "Ashe", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 2:
            return(NormalCard(id:2, name: "Blitzcrank", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 3:
            return(NormalCard(id:3, name: "Annie", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 4:
            return(NormalCard(id:4, name: "Evelynn", attack: 1, defense: 1, hability: 2, difficulty: 2))
        case 5:
            return(NormalCard(id:5, name: "Dr. Mundo", attack: 1, defense: 1, hability: 2, difficulty: 2))
        default:
            return(NormalCard(id:-1, name: "MissingNmbrX", attack: 0, defense: 0, hability: 0, difficulty: 0))
        }
    }
}