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

}
