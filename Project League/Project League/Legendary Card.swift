//
//  Legendary Card.swift
//  Project League
//
//  Created by Fabio Pereira on 19/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class LegendaryCard : Card {
    
    override init(id: UInt32, name: String, attack: Int, defense: Int, hability: Int, difficulty: Int) {
        super.init(id: id, name: name, attack: attack, defense: defense, hability: hability, difficulty: difficulty)
        self.powerUp()
        print(self.name + " legendary card initialized")
    }
    
    func powerUp() {
        self.attack += 1
        self.defense += 1
        self.hability += 1
        self.difficulty += 1
        print(self.name + " is powered up")
    }
}
