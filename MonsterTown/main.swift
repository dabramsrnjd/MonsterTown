//
//  main.swift
//  MonsterTown
//
//  Created by David Abrams on 8/16/18.
//  Copyright © 2018 David Abrams. All rights reserved.
//

import Foundation

var myTown = Town()

let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize): population: \(myTown.population)")

myTown.changePopulation(by: 500)
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

let billyTheVampire = Vampire()
billyTheVampire.town = myTown
billyTheVampire.terrorizeTown()
billyTheVampire.town?.printDescription()

print("Victim Pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim Pool: \(fredTheZombie.victimPool)")
print(Zombie.sppokyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

