//
//  Card.swift
//  Project League
//
//  Created by Fabio Pereira on 19/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class Card {
    
    var id:UInt32
    var name:String
    var attack:Int
    var defense:Int
    var hability:Int
    var difficulty:Int
    
    init(){
        self.id = 1
        self.name = ""
        self.attack = 0
        self.defense = 0
        self.hability = 0
        self.difficulty = 0
        print(self.name + " card initialized with default values")
    }
    
    init(id:UInt32, name:String, attack:Int, defense:Int, hability:Int, difficulty:Int){
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