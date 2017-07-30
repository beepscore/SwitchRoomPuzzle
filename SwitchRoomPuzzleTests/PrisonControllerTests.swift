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
    
    func testInitNotNil() {
        let prisonController = PrisonController()
        XCTAssertNotNil(prisonController)
    }

    func testInitRoom() {
        let prisonController = PrisonController()
        XCTAssertNotNil(prisonController.room)
    }

    func testInitPrisoners() {
        let prisonController = PrisonController()
        XCTAssertEqual(prisonController.prisoners.count, 1)
    }

    func testVisitRoom() {
        let prisonController = PrisonController()
        XCTAssertEqual(prisonController.visitRoom(prisoner: prisonController.prisoners.first!),
                       .won)
    }

    func testDidAllPrisonersVisitAtLeastOnceNoVisits() {
        let prisonController = PrisonController()
        XCTAssertFalse(prisonController.didAllPrisonersVisitAtLeastOnce())
    }

    func testDidAllPrisonersVisitAtLeastOnceOneVisit() {
        let prisonController = PrisonController()
        let _ = prisonController.visitRoom(prisoner: prisonController.prisoners.first!)
        XCTAssertTrue(prisonController.didAllPrisonersVisitAtLeastOnce())
    }
}
