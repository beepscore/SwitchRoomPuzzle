//
//  Prisoner.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

class Prisoner: NSObject {

    // TODO: could store all previous visits to the switch room

    var didVisitRoomAtLeastOnce = false

    /// Method has side effects, may change state of prisoner and room.roomSwitch.
    /// - Returns: true if each prisoner has visited at least once
    /// (including current visit, before self possibly set roomSwitch),
    /// return false if each prisoner hasn't visited at least once or don't know.
    func visitRoomAndReport(_ room: Room) -> Bool {
        
        let roomSwitchUponEntering = room.roomSwitch
        room.roomSwitch = shouldSetSwitch(roomSwitchUponEntering: roomSwitchUponEntering)

        didVisitRoomAtLeastOnce = true

        // self might have set roomSwitch, so use roomSwitchUponEntering
        return didEachPrisonerVisitAtLeastOnce(roomSwitchUponEntering: roomSwitchUponEntering)
    }

    /// This method may use prisoner state to calculate return value.
    /// It may not use info directly from prisonController or from other prisoners.
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if each prisoner has visited at least once
    /// (including current visit, before self possibly set switch),
    /// return false if each prisoner hasn't visited at least once or don't know.
    func didEachPrisonerVisitAtLeastOnce(roomSwitchUponEntering: Bool) -> Bool {

        // TODO: improve implementation, e.g. handle cases with more than one prisoner
        return didVisitRoomAtLeastOnce
    }

    /// This method may recommend to turn switch on, or off, or toggle, or don't change.
    /// May use prisoner state to calculate return value.
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if should set switch true, else false
    func shouldSetSwitch(roomSwitchUponEntering: Bool) -> Bool {

        return true
    }

}
