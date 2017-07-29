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

    func visitRoom(_ room: Room) -> Bool {
        let roomSwitchUponEntering = room.roomSwitch
        room.roomSwitch = shouldSetSwitch(roomSwitchUponEntering: roomSwitchUponEntering)

        // self might have set roomSwitch, so use roomSwitchUponEntering
        return didEachPrisonerVisitAtLeastOnce(roomSwitchUponEntering: roomSwitchUponEntering)
    }

    /// This method may use prisoner state to calculate return value.
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if each prisoner has visited at least once
    /// (including current visit, before self possibly set switch),
    /// return false if each prisoner hasn't visited at least once or don't know.
    func didEachPrisonerVisitAtLeastOnce(roomSwitchUponEntering: Bool) -> Bool {

        return true
    }

    /// This method may recommend to turn switch on, or off, or toggle, or don't change.
    /// May use prisoner state to calculate return value.
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if should set switch true, else false
    func shouldSetSwitch(roomSwitchUponEntering: Bool) -> Bool {

        return true
    }

}
