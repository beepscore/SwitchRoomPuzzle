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
        let prisonController = PrisonController(room: nil, prisoners: nil)
        XCTAssertNotNil(prisonController)
        XCTAssertNil(prisonController.room)
        XCTAssertNil(prisonController.prisoners)
    }

    func testInitNotNil() {
        let prisonController = PrisonController(room: Room(), prisoners: [Prisoner()])
        XCTAssertNotNil(prisonController)
    }

    func testInitRoom() {
        let prisonController = PrisonController(room: Room(), prisoners: [Prisoner()])
        XCTAssertNotNil(prisonController.room)
    }

    func testInitPrisoners() {
        let prisonController = PrisonController(room: Room(), prisoners: [Prisoner()])
        XCTAssertEqual(prisonController.prisoners?.count, 1)
    }

    func testVisitRoom() {
        let prisonController = PrisonController(room: Room(), prisoners: [Prisoner()])
        let prisoner = prisonController.prisoners?.first
        XCTAssertEqual(prisonController.visitRoom(prisoner: prisoner!), .won)
    }

    func testDidAllPrisonersVisitAtLeastOnceNoVisits() {
        let prisonController = PrisonController(room: Room(), prisoners: [Prisoner()])
        XCTAssertFalse(prisonController.didAllPrisonersVisitAtLeastOnce())
    }

    func testDidAllPrisonersVisitAtLeastOnceOneVisit() {
        let prisonController = PrisonController(room: Room(), prisoners: [Prisoner()])
        let prisoner = prisonController.prisoners?.first
        let _ = prisonController.visitRoom(prisoner: prisoner!)
        XCTAssertTrue(prisonController.didAllPrisonersVisitAtLeastOnce())
    }

    func testDidAllPrisonersVisitAtLeastOnceTwoPrisoners() {
        let prisonController = PrisonController(room: Room(), prisoners: [Prisoner(), Prisoner()])
        let _ = prisonController.visitRoom(prisoner: (prisonController.prisoners?[0])!)
        XCTAssertFalse(prisonController.didAllPrisonersVisitAtLeastOnce())
        let _ = prisonController.visitRoom(prisoner: (prisonController.prisoners?[1])!)
        XCTAssertTrue(prisonController.didAllPrisonersVisitAtLeastOnce())
    }



}
