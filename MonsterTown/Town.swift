//
//  Town.swift
//  MonsterTown
//
//  Created by David Abrams on 8/16/18.
//  Copyright © 2018 David Abrams. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    var mayor = Mayor()
    var population = 5_422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
            print("The population has changed to \(population) from \(oldPopulation).")
                mayor.amOnIt()
            }
            
        }
    }
    var numberOfStopLights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get {
        switch self.population {
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
        }
    }
    
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
}
