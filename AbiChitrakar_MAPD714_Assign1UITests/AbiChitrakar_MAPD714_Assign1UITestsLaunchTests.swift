//
//  AbiChitrakar_MAPD714_Assign1UITestsLaunchTests.swift
//  AbiChitrakar_MAPD714_Assign1UITests
//
//  Created by Abi Chitrakar on 2023-09-19.
//

import XCTest

final class AbiChitrakar_MAPD714_Assign1UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
