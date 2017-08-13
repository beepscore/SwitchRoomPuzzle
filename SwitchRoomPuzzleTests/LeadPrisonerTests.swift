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

    func testDidLeadPrisonerVisit() {
        let room = Room()
        let leadPrisoner = LeadPrisoner(room: room, numberOfPrisoners: 1)
        XCTAssertFalse(leadPrisoner.didLeadPrisonerVisit)
        leadPrisoner.visitRoom(room)
        XCTAssertTrue(leadPrisoner.didLeadPrisonerVisit)
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
