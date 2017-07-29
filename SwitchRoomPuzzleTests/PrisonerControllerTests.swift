//
//  PrisonerControllerTests.swift
//  SwitchRoomPuzzle
//
//  Created by Steve Baker on 7/29/17.
//  Copyright © 2017 Beepscore LLC. All rights reserved.
//

import XCTest
@testable import SwitchRoomPuzzle

class PrisonerControllerTests: XCTestCase {
    
    func testInitNotNil() {
        let prisonerController = PrisonerController()
        XCTAssertNotNil(prisonerController)
    }
    
    func testInitPrisoners() {
        let prisonerController = PrisonerController()
        XCTAssertEqual(prisonerController.prisoners.count, 1)
    }

}
