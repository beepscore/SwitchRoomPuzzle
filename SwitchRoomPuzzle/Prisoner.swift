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
    /// roomSwitch state on previous visit
    var roomSwitchPrevious = false
    /// roomSwitch state upon entering room this visit
    var roomSwitchUponEntering = false

    var didAllPrisonersVisit = false

    /// Method has side effects, may change state of prisoner and room.roomSwitch.
    func visitRoom(_ room: Room) {
        enterRoom(room)
        didAllPrisonersVisit = didEachPrisonerVisitAtLeastOnce(room)
        leaveRoom(room)
    }

    func enterRoom(_ room: Room) {
        roomSwitchUponEntering = room.roomSwitch
        room.roomSwitch = shouldSetSwitch(roomSwitchUponEntering: roomSwitchUponEntering)
    }

    /// This method may use prisoner state to calculate return value.
    /// It may not use info directly from prisonController or from other prisoners.
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if each prisoner has visited at least once
    /// (including current visit, before self possibly set switch),
    /// return false if each prisoner hasn't visited at least once or don't know.
    private func didEachPrisonerVisitAtLeastOnce(_ room: Room) -> Bool {

        // TODO: improve implementation, e.g. handle cases with more than one prisoner
        return (!didVisitRoomAtLeastOnce && roomSwitchUponEntering)
            || room.roomSwitch
    }

    func leaveRoom(_ room: Room) {
        roomSwitchPrevious = room.roomSwitch
        didVisitRoomAtLeastOnce = true
    }

    /// This method may recommend to turn switch on, or off, or toggle, or don't change.
    /// May use prisoner state to calculate return value.
    /// - Parameter roomSwitchUponEntering: switch state upon entering room
    /// - Returns: true if should set switch true, else false
    func shouldSetSwitch(roomSwitchUponEntering: Bool) -> Bool {

        return true
    }

}
