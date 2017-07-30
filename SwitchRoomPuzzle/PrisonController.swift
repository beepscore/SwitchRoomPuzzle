//
//  PrisonController.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

class PrisonController: NSObject {

    let room = Room()

    let prisoners: [Prisoner] = [Prisoner()]

    enum PrisonersState: Int {
        // prisoner didn't guess true
        case keepPlaying
        // prisoner guessed true, but was wrong, feed prisoners to crocodiles
        case lost
        // prisoner guessed true, and was correct, free all prisoners
        case won
    }

    /// - PrisonController uses this to check if a Prisoner "guess" is correct.
    /// - Returns: true if each prisoner has visited at least once
    func didAllPrisonersVisitAtLeastOnce() -> Bool {
        return prisoners.filter({ $0.didVisitRoomAtLeastOnce == false }) == []
    }

    /// - Parameter prisoner: prisoner to visit room
    /// - Returns: PrisonersState
    func visitRoom(prisoner: Prisoner) -> PrisonersState {
        let prisonerGuess = prisoner.visitRoomAndReport(room)

        if prisonerGuess {

            if didAllPrisonersVisitAtLeastOnce() {
                return PrisonersState.won
            } else {
                return PrisonersState.lost
            }
        }

        // prisoner didn't guess true
        return PrisonersState.keepPlaying
    }

}
