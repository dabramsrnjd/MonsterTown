//
//  Zombie.swift
//  MonsterTown
//
//  Created by David Abrams on 8/16/18.
//  Copyright © 2018 David Abrams. All rights reserved.
//

import Foundation

class Zombie: Monster {
    
    override class var sppokyNoise: String {
        return "Brains...   "
    }
    var walkWithLimp = true
    private(set) var isFallingApart = false
    
    final override func terrorizeTown() {
        if !isFallingApart {
        town?.changePopulation(by: -10)
        }
        super.terrorizeTown()

    }
}
