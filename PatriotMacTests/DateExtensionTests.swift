//
//  DateExtensionTests.swift
//  PatriotMacTests
//
//  Created by Ron Lisle on 4/16/24.
//

import XCTest
@testable import PatriotMac

final class DateExtensionTests: XCTestCase {

    func testIsAM_morning() throws {
        let testDate = Date.atTime("08:34:00")
        let result = testDate.isAM()
        XCTAssertTrue(result)
    }
    
    func testIsAM_afternoon() throws {
        let testDate = Date.atTime("17:56:00")
        let result = testDate.isAM()
        XCTAssertFalse(result)
    }
    
    func testIsAM_evening() throws {
        let testDate = Date.atTime("22:34:00")
        let result = testDate.isAM()
        XCTAssertFalse(result)
    }
    
    func testIsAM_earlyMorning() throws {
        let testDate = Date.atTime("02:34:00")
        let result = testDate.isAM()
        XCTAssertTrue(result)
    }
}
