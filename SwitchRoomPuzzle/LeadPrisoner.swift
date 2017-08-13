//
//  LeadPrisoner.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 8/11/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import UIKit

class LeadPrisoner: PrisonerProtocol {

    var room: Room?
    var didVisit = false

    var numberOfPrisoners = 0
    var numberOfTurnOffs = 0

    init(room: Room?, numberOfPrisoners: Int) {
        self.room = room ?? Room()
        self.numberOfPrisoners = numberOfPrisoners
    }


    /// Method has side effects, may change state of prisoner,
    /// room.roomSwitch, room.didPrisonerSayAllHaveVisited
    func visitRoom(_ room: Room) {

        if room.roomSwitch {
            room.roomSwitch = false
            numberOfTurnOffs += 1
        }

        didVisit = true
        if didAllPrisonersVisit() {
            room.didPrisonerSayAllHaveVisited = true
        }
    }

    func didAllPrisonersVisit() -> Bool {
        let numberOfRegularPrisoners = numberOfPrisoners - 1
        return didVisit && (numberOfTurnOffs >= numberOfRegularPrisoners)
    }

}
