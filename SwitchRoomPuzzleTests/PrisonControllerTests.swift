//
//  PrisonControllerTests.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import SwitchRoomPuzzle

class PrisonControllerTests: XCTestCase {
    
    func testInitDefaults() {
        let prisonController = PrisonController(room: nil, numberOfPrisoners: nil)
        XCTAssertNotNil(prisonController)
        XCTAssertNotNil(prisonController.room)
        XCTAssertEqual(prisonController.numberOfPrisoners, 10)
    }

    func testInitRoom() {
        let prisonController = PrisonController(room: Room(), numberOfPrisoners: 10)
        XCTAssertNotNil(prisonController.room)
    }

    func testInitPrisonerVisiteds() {
        let numberOfPrisoners = 10
        let prisonController = PrisonController(room: Room(),
                                                numberOfPrisoners: numberOfPrisoners)
        XCTAssertEqual(prisonController.prisonerVisiteds.count, numberOfPrisoners)
    }

    func testDidAllPrisonersVisitAtLeastOnceNoVisits() {
        let room = Room()
        let prisonController = PrisonController(room: room, numberOfPrisoners: 6)
        XCTAssertFalse(prisonController.didAllPrisonersVisitAtLeastOnce())
    }

}
