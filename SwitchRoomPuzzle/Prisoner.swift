//
//  Prisoner.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

class Prisoner: NSObject {

    // TODO: State could store visits to the switch room

    /// Given my state and the current switch state,
    /// - Parameter currentSwitch: switch state upon entering room
    /// - Returns: true if each prisoner has visited at least once (including my current visit),
    /// return false if each prisoner hasn't visited at least once or don't know.
    func didEachPrisonerVisitAtLeastOnce(currentSwitch: Bool) -> Bool {

        return true
    }

    /// Given my state and the current switch state,
    /// turn switch on, or off, or toggle it, or don't change switch.
    /// - Parameter currentSwitch: switch state upon entering room
    /// - Returns: true if should set switch true, else false
    func shouldSetSwitch(currentSwitch: Bool) -> Bool {

        return true
    }

}
