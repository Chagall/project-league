//
//  Methods.swift
//  Project League
//
//  Created by Fabio Pereira on 26/07/16.
//  Copyright © 2016 Fabio Pereira. All rights reserved.
//

import Foundation

class UtilMethods {
    
    static func generateRandomCardId() -> UInt32 {
        let cardId = arc4random_uniform(35) + 1
        return(cardId)
    }
    
}