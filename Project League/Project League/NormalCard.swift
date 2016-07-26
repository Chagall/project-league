//
//  Card.swift
//  Project League
//
//  Created by Fabio Pereira on 19/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class NormalCard {
    
    var id:Int
    var name:String
    var attack:Int
    var defense:Int
    var hability:Int
    var difficulty:Int
    
    init(id:Int, name:String, attack:Int, defense:Int, hability:Int, difficulty:Int){
        self.id = id
        self.name = name
        self.attack = attack
        self.defense = defense
        self.hability = hability
        self.difficulty = difficulty
        print(self.name + " card initialized")
    }
    
    func choosenDuelAttribute(whichAttribute:CardAttribute) -> Int {
        switch whichAttribute {
        case CardAttribute.attack:
            print ("Attack value:  \(self.attack) was returned")
            return self.attack
        case CardAttribute.defense:
            print ("Defense value: \(self.defense) was returned")
            return self.defense
        case CardAttribute.hability:
            print ("Hability value: \(self.hability) was returned")
            return self.hability
        case CardAttribute.difficulty:
            print ("Difficulty value: \(self.difficulty) was returned")
            return self.difficulty
        }
    }
}