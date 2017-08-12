//
//  PrisonerProtocol.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 8/11/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import Foundation

protocol PrisonerProtocol {
    /// returns true if all prisoners have visited room
    func visitRoom(_ room: Room) -> Bool
}

