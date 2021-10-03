//
//  BasePageObject.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest


public let app = XCUIApplication() // replace with below line if Application code is not available in this Code base in Mercari folder
//public let app = XCUIApplication(bundleIdentifier: "com.Mercari.MercariApp")

public class BasePageObject: VerificationContainerElement, MercariUIElementExistenceHandler {
    
    var isDesiredPage: Bool { return false }
    var pageIdentifier: String { return "NOT_SET" }
    public var existsOnScreen: Bool { return self.isDesiredPage }
    
    
    init() {
        checkPageLoadedSuccessfully()
    }
    
    func checkPageLoadedSuccessfully() {
        XCTAssertTrue(existsOnScreen, "Failed to load \(self.pageIdentifier) withing expected timeframe of \(Config.pageLoadTimeoutDuration) seconds")
    }
}

