//
//  PartOfDayTests.swift
//  PatriotMacTests
//
//  Created by Ron Lisle on 4/15/24.
//

import XCTest
@testable import PatriotMac

final class PartOfDayTests: XCTestCase {

    override func setUpWithError() throws {
        // Override these in individual tests if needed
        Globals.nighttime = false
        Globals.sleeping = false
        Globals.retiring = false
    }

    func testPartOfDay_awakeEarly() throws {
        Globals.nighttime = true
        let testNightPOD = partOfDay(date: Date.atTime("04:45:00"))
        XCTAssertEqual(testNightPOD, PartOfDay.AwakeEarly)
    }
    
    func testPartOfDay_morning() throws {
        let testNightPOD = partOfDay(date: Date.atTime("10:15:00"))
        XCTAssertEqual(testNightPOD, PartOfDay.Morning)
    }
    
    func testPartOfDay_afternoon() throws {
        let testNightPOD = partOfDay(date: Date.atTime("14:35:00"))
        XCTAssertEqual(testNightPOD, PartOfDay.Afternoon)
    }
    
    func testPartOfDay_evening() throws {
        Globals.nighttime = true
        let testNightPOD = partOfDay(date: Date.atTime("21:45:00"))
        XCTAssertEqual(testNightPOD, PartOfDay.Evening)
    }
    
    func testPartOfDay_retiring() throws {
        Globals.nighttime = true
        Globals.retiring = true
        let testNightPOD = partOfDay(date: Date.atTime("22:45:00"))
        XCTAssertEqual(testNightPOD, PartOfDay.Retiring)
    }
    
    func testPartOfDay_asleep() throws {
        Globals.nighttime = true
        Globals.sleeping = true
        let testNightPOD = partOfDay(date: Date.atTime("02:55:00"))
        XCTAssertEqual(testNightPOD, PartOfDay.Asleep)
    }
}
