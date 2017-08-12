//
//  LeadPrisonerTests.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 8/11/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import SwitchRoomPuzzle

class LeadPrisonerTests: XCTestCase {
    
    func testInit() {
        let room = Room()
        let numberOfPrisoners = 6
        let prisoner = LeadPrisoner(room: room, numberOfPrisoners: numberOfPrisoners)
        XCTAssertNotNil(prisoner)
    }

    func testDidAllPrisonersVisit() {
        let room = Room()
        let prisoner = LeadPrisoner(room: room, numberOfPrisoners: 1)
        XCTAssertFalse(prisoner.didAllPrisonersVisit())
        XCTAssertTrue(prisoner.visitRoom(room))
        XCTAssertTrue(prisoner.didAllPrisonersVisit())
    }

}
