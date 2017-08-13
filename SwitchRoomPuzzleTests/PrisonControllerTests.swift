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

    func testPopulatedPrisoners() {
        let room = Room()
        var numberOfPrisoners = 0
        XCTAssertEqual(PrisonController.populatedPrisoners(numberOfPrisoners: numberOfPrisoners, room: room).count,
            numberOfPrisoners)
        numberOfPrisoners = 1
        XCTAssertEqual(PrisonController.populatedPrisoners(numberOfPrisoners: numberOfPrisoners, room: room).count,
            numberOfPrisoners)
        numberOfPrisoners = 2
        XCTAssertEqual(PrisonController.populatedPrisoners(numberOfPrisoners: numberOfPrisoners, room: room).count,
            numberOfPrisoners)
    }

    func testPopulatedPrisonersVisitedRoom() {
        XCTAssertEqual(PrisonController.populatedPrisonersVisitedRoom(numberOfPrisoners:0),
                       [])
        XCTAssertEqual(PrisonController.populatedPrisonersVisitedRoom(numberOfPrisoners:1),
                       [false])
        XCTAssertEqual(PrisonController.populatedPrisonersVisitedRoom(numberOfPrisoners:2),
                       [false, false])
        XCTAssertEqual(PrisonController.populatedPrisonersVisitedRoom(numberOfPrisoners:3),
                       [false, false, false])
    }
    
    func testDidAllPrisonersVisitAtLeastOnceNoVisits() {
        let room = Room()
        let prisonController = PrisonController(room: room, numberOfPrisoners: 6)
        XCTAssertFalse(prisonController.didAllPrisonersVisitAtLeastOnce())
    }

    // MARK: - testManagePrisoners

    func testManagePrisonersNumberOfPrisoners0() {
        let room = Room()
        let prisonController = PrisonController(room: room, numberOfPrisoners: 0)
        XCTAssertFalse(prisonController.managePrisoners())
    }

    func testManagePrisonersNumberOfPrisoners1() {
        let room = Room()
        let prisonController = PrisonController(room: room, numberOfPrisoners: 1)
        XCTAssertTrue(prisonController.managePrisoners())
    }

}
