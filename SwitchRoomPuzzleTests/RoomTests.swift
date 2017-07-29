//
//  RoomTests.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import SwitchRoomPuzzle

class RoomTests: XCTestCase {
    
    func testInitNotNil() {
        let room = Room()
        XCTAssertNotNil(room)
    }

    func testInitRoomSwitch() {
        let room = Room()
        XCTAssertFalse(room.roomSwitch)
    }

}
