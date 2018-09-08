//
//  Monster.swift
//  MonsterTown
//
//  Created by David Abrams on 8/16/18.
//  Copyright © 2018 David Abrams. All rights reserved.
//

import Foundation

class Monster {
    static let isTerrifying = true
    class var sppokyNoise: String {
        return "Grrr"
    }
    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown(){
        if town != nil {
            print("\(name) is terrorzing a town!")
        }
        else {
            print ("\(name) hasn't found a town to terrorize yet..." )
        }
    }
}
