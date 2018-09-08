//
//  Mayor.swift
//  MonsterTown
//
//  Created by David Abrams on 9/7/18.
//  Copyright © 2018 David Abrams. All rights reserved.
//

import Foundation

struct Mayor {
    
     var anxiety = 0
    
    mutating func amOnIt() {
        print("I'm deeply saddened to hear about this latest tragedy.  I promise that my office is looking into the nature of this rash of violence.")
    anxiety += 1
        print("The Mayor's anxiety is equal to: \(anxiety)")
    }
}
