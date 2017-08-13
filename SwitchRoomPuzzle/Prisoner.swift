//
//  Prisoner.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

class Prisoner: PrisonerProtocol {

    // only "signal" to lead prisoner one time
    var didSwitchOn = false

    /// Method has side effects, may change state of room.roomSwitch.
    func visitRoom(_ room: Room) {

        if !didSwitchOn && !room.roomSwitch {
            // turn light on
            room.roomSwitch = true
            didSwitchOn = true
        }
    }
    
}
