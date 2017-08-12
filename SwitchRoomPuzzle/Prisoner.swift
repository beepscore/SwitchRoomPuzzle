//
//  Prisoner.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

class Prisoner: PrisonerProtocol {

    /// Method has side effects, may change state of room.roomSwitch.
    /// regular prisoner doesn't know answer, always returns false
    func visitRoom(_ room: Room) -> Bool {

        if !room.roomSwitch {
            // turn light on
            room.roomSwitch = true
        }
        return didAllPrisonersVisit()
    }

    /// regular prisoner doesn't know answer, always returns false
    func didAllPrisonersVisit() -> Bool {
        return false
    }
    
}
