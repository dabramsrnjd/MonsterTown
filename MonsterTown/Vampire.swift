//
//  Vampire.swift
//  MonsterTown
//
//  Created by David Abrams on 8/17/18.
//  Copyright © 2018 David Abrams. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    var vampireThralls = [Vampire]()
    
   
    final override func terrorizeTown() {
        town?.changePopulation(by: -1)
        vampireThralls.append(contentsOf: vampireThralls)
    
    }
}
