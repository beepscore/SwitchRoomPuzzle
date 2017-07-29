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
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if each prisoner has visited at least once
    /// (including current visit, before self possibly set switch),
    /// return false if each prisoner hasn't visited at least once or don't know.
    func didEachPrisonerVisitAtLeastOnce(roomSwitchUponEntering: Bool) -> Bool {

        return true
    }

    /// Given self state and the current switch state,
    /// turn switch on, or off, or toggle it, or don't change switch.
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if should set switch true, else false
    func shouldSetSwitch(roomSwitchUponEntering: Bool) -> Bool {

        return true
    }

}
