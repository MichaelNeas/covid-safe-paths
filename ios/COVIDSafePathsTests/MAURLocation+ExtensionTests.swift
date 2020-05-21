//
//  MAURLocation+ExtensionTests.swift
//  GPSTests
//
//  Created by Michael Neas on 5/21/20.
//  Copyright © 2020 Path Check Inc. All rights reserved.
//

import XCTest

class MAURLocation_ExtensionTests: XCTestCase {
  func testScryptHashSpec() {
    let date = Date(timeIntervalSince1970: 1586865792)
    let backgroundLocation = TestMAURLocation(latitude: 51.5019, longitude: -0.1415, date: date)
    XCTAssertEqual(backgroundLocation.nearestTimeStamp, 1586865600)
    XCTAssertEqual(backgroundLocation.geohash(precision: 8), "gcpuuz8u")
    XCTAssertEqual(backgroundLocation.scryptHash, "lFYQZWaU9QN5p804NLX1vw==")
  }
}
