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
        XCTAssertFalse(prisoner.didVisitRoomAtLeastOnce)
    }

    func testVisitRoom() {
        let prisoner = Prisoner()
        XCTAssertFalse(prisoner.didVisitRoomAtLeastOnce)
        prisoner.visitRoom(Room())
        XCTAssertTrue(prisoner.didVisitRoomAtLeastOnce)
    }

    func testDidAllPrisonersVisit() {
        let prisoner = Prisoner()
        XCTAssertFalse(prisoner.didAllPrisonersVisit)
        prisoner.visitRoom(Room())
        XCTAssertTrue(prisoner.didAllPrisonersVisit)
    }

}
