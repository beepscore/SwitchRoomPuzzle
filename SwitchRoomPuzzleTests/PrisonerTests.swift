//
//  PrisonerTests.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import SwitchRoomPuzzle

class PrisonerTests: XCTestCase {
    
    func testInit() {
        let prisoner = Prisoner()
        XCTAssertNotNil(prisoner)
    }

    func testVisitRoom() {
        let room = Room()
        XCTAssertFalse(room.roomSwitch)

        let prisoner = Prisoner()
        XCTAssertFalse(prisoner.didSwitchOn)

        prisoner.visitRoom(room)

        XCTAssertTrue(room.roomSwitch)
        XCTAssertTrue(prisoner.didSwitchOn)

        // simulate lead prisoner visited room
        room.roomSwitch = false

        prisoner.visitRoom(room)

        XCTAssertFalse(room.roomSwitch, "should not switch light on more than once")
        XCTAssertTrue(prisoner.didSwitchOn)
    }

}
