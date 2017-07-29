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

    /// - Parameter prisoner: prisoner to visit room
    /// - Returns: true if prisoner thinks each has visited at least once
    func visitRoom(prisoner: Prisoner) -> Bool {
        return prisoner.visitRoom(room)
    }

}
