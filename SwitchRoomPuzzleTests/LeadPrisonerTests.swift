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
        let leadPrisoner = LeadPrisoner(room: room, numberOfPrisoners: numberOfPrisoners)
        XCTAssertNotNil(leadPrisoner)
    }

    func testVisitRoom() {
        let room = Room()

        // simulate non-lead prisoner turned switch on
        room.roomSwitch = true

        let leadPrisoner = LeadPrisoner(room: room, numberOfPrisoners: 2)
        XCTAssertTrue(room.roomSwitch)
        XCTAssertEqual(leadPrisoner.numberOfTurnOffs, 0)
        XCTAssertFalse(leadPrisoner.didVisit)

        leadPrisoner.visitRoom(room)

        XCTAssertFalse(room.roomSwitch)
        XCTAssertEqual(leadPrisoner.numberOfTurnOffs, 1)
        XCTAssertTrue(leadPrisoner.didVisit)
    }

    func testDidAllPrisonersVisitOnePrisoner() {
        let room = Room()
        let leadPrisoner = LeadPrisoner(room: room, numberOfPrisoners: 1)
        XCTAssertFalse(leadPrisoner.didAllPrisonersVisit())
        leadPrisoner.visitRoom(room)
        XCTAssertTrue(leadPrisoner.didAllPrisonersVisit())
    }

    func testDidAllPrisonersVisitTwoPrisoners() {
        let room = Room()
        let leadPrisoner = LeadPrisoner(room: room, numberOfPrisoners: 2)
        leadPrisoner.visitRoom(room)
        XCTAssertFalse(leadPrisoner.didAllPrisonersVisit())
        leadPrisoner.numberOfTurnOffs = 1
        XCTAssertTrue(leadPrisoner.didAllPrisonersVisit())
    }

}
