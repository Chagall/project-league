//
//  Player.swift
//  Project League
//
//  Created by Fabio Pereira on 20/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class Player {
    
    var identifier:PlayerIdentifier
    var lifePoints:Int
    
    init(identifier:PlayerIdentifier, lifePoints:Int){
        self.identifier = identifier
        self.lifePoints = lifePoints
    }
    
    func updateLifePoints(damageReceived:Int) -> Bool {
        self.lifePoints = self.lifePoints - damageReceived
        let hasPlayerLost = verifyDefeat()
        return hasPlayerLost
    }
    
    func verifyDefeat() -> Bool {
        if(self.lifePoints <= 0){
            return true
        }
        else{
            return false
        }
    }
}