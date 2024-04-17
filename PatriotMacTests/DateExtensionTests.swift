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
    
    func testIsAM_barelyMorning() throws {
        let testDate = Date.atTime("11:59:59")
        let result = testDate.isAM()
        XCTAssertTrue(result)
    }
    
    func testIsAM_afternoon() throws {
        let testDate = Date.atTime("17:56:00")
        let result = testDate.isAM()
        XCTAssertFalse(result)
    }
    
    func testIsAM_barelyAfternoon() throws {
        let testDate = Date.atTime("12:00:00")
        let result = testDate.isAM()
        XCTAssertFalse(result)
    }
    
    func testIsAM_evening() throws {
        let testDate = Date.atTime("22:34:00")
        let result = testDate.isAM()
        XCTAssertFalse(result)
    }
    
    func testIsAM_midnight() throws {
        let testDate = Date.atTime("24:00:00")
        let result = testDate.isAM()
        XCTAssertTrue(result)
    }
    
    func testIsAM_000000() throws {
        let testDate = Date.atTime("00:00:00")
        let result = testDate.isAM()
        XCTAssertTrue(result)
    }
    
    func testIsAM_invalidDate() throws {
        let testDate = Date.atTime("46:92:63")
        let result = testDate.isAM()
        XCTAssertTrue(result)
    }
    
    func testIsAM_earlyMorning() throws {
        let testDate = Date.atTime("02:34:00")
        let result = testDate.isAM()
        XCTAssertTrue(result)
    }
}
