//
//  Room.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

/// Room with switch corresponds directly to physical situation.
/// probably could eliminate room object and just have a roomSwitch
/// room.roomSwitch might be a little easier to enable any prisoner to set the switch.
class Room: NSObject {

    // switch in the room
    var roomSwitch = false
    
}
