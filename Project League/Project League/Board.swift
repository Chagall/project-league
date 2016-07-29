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
				return(Card(id:1, name: "Aatrox", attack: 8, defense: 4, hability: 3, difficulty: 4))
			case 2:
				return(Card(id:2, name: "Ahri", attack: 3, defense: 4, hability: 8, difficulty: 5))
			case 3:
				return(Card(id:3, name: "Akali", attack: 5, defense: 3, hability: 8, difficulty: 7))
			case 4:
				return(Card(id:4, name: "Alistar", attack: 6, defense: 9, hability: 5, difficulty: 7))
			case 5:
				return(Card(id:5, name: "Amumu", attack: 2, defense: 6, hability: 8, difficulty: 3))
			case 6:
				return(Card(id:6, name: "Anivia", attack: 1, defense: 4, hability: 10, difficulty: 10))
			case 7:
				return(Card(id:7, name: "Annie", attack: 2, defense: 3, hability: 10, difficulty: 6))
			case 8:
				return(Card(id:8, name: "Ashe", attack: 7, defense: 3, hability: 2, difficulty: 4))
			case 9:
				return(Card(id:9, name: "Aurelion Sol", attack: 2, defense: 3, hability: 8, difficulty: 7))
			case 10:
				return(Card(id:10, name: "Azir", attack: 6, defense: 3, hability: 8, difficulty: 9))
			case 11:
				return(Card(id:11, name: "Bard", attack: 4, defense: 4, hability: 5, difficulty: 9))
			case 12:
				return(Card(id:12, name: "Blitzcrank", attack: 4, defense: 8, hability: 5, difficulty: 4))
			case 13:
				return(Card(id:13, name: "Brand", attack: 2, defense: 2, hability: 9, difficulty: 4))
			case 14:
				return(Card(id:14, name: "Braum", attack: 3, defense: 9, hability: 4, difficulty: 3))
			case 15:
				return(Card(id:15, name: "Caitlyn", attack: 8, defense: 2, hability: 2, difficulty: 6))
			case 16:
				return(Card(id:16, name: "Cassiopeia", attack: 2, defense: 3, hability: 9, difficulty: 10))
			case 17:
				return(Card(id:17, name: "Cho'Gath", attack: 3, defense: 7, hability: 7, difficulty: 5))
			case 18:
				return(Card(id:18, name: "Corki", attack: 8, defense: 3, hability: 6, difficulty: 6))
            case 19:
				return(Card(id:19, name: "Darius", attack: 9, defense: 5, hability: 1, difficulty: 2))
			case 20:
				return(Card(id:20, name: "Diana", attack: 7, defense: 6, hability: 8, difficulty: 4))
            case 21:
                return(Card(id:21, name: "Dr. Mundo", attack: 5, defense: 7, hability: 6, difficulty: 5))
            case 22:
                return(Card(id:22, name: "Draven", attack: 9, defense: 3, hability: 1, difficulty: 8))
            case 23:
                return(Card(id:23, name: "Ekko", attack: 5, defense: 3, hability: 7, difficulty: 8))
            case 24:
                return(Card(id:24, name: "Elise", attack: 6, defense: 5, hability: 7, difficulty: 9))
            case 25:
                return(Card(id:25, name: "Evelynn", attack: 4, defense: 2, hability: 7, difficulty: 10))
            case 26:
                return(Card(id:26, name: "Ezreal", attack: 7, defense: 2, hability: 6, difficulty: 7))
            case 27:
                return(Card(id:27, name: "Fiddlesticks", attack: 2, defense: 3, hability: 9, difficulty: 9))
            case 28:
                return(Card(id:28, name: "Fiora", attack: 10, defense: 4, hability: 2, difficulty: 3))
            case 29:
                return(Card(id:29, name: "Fizz", attack: 6, defense: 4, hability: 7, difficulty: 6))
            case 30:
                return(Card(id:30, name: "Galio", attack: 3, defense: 7, hability: 6, difficulty: 3))
            case 31:
                return(Card(id:31, name: "Gangplank", attack: 7, defense: 6, hability: 4, difficulty: 9))
            case 32:
                return(Card(id:32, name: "Garen", attack: 7, defense: 7, hability: 1, difficulty: 5))
            case 33:
                return(Card(id:33, name: "Gnar", attack: 6, defense: 5, hability: 5, difficulty: 8))
            case 34:
                return(Card(id:34, name: "Gragas", attack: 4, defense: 7, hability: 6, difficulty: 5))
            case 35:
                return(Card(id:35, name: "Graves", attack: 8, defense: 5, hability: 3, difficulty: 3))
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