//
//  Room.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

/// room is a convenient object to pass info between Prisoners, LeadPrisoner and PrisonController
class Room: NSObject {

    /// switch in the room. corresponds directly to physical situation.
    var roomSwitch = false

    var didPrisonerSayAllHaveVisited = false
    
}
