//
//  MercariUIElementExistenceHandler.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

protocol MercariUIElementExistenceHandler {
    func checkForExistence(element: XCUIElement, failureMessage: String)
    func timeOut() -> Int64
    func getCurrentTimeInMillis() -> Int64
    func waitForActivityIndicatorToDisappear()
}

extension MercariUIElementExistenceHandler {
    func checkForExistence(element: XCUIElement, failureMessage: String) {
        if !element.existsOnScreen {
            XCTFail(failureMessage)
        }
    }
    
    func getCurrentTimeInMillis() -> Int64 {
        return Int64(Date().timeIntervalSince1970 * 1000)
    }
    
    func timeOut() -> Int64 {
        return getCurrentTimeInMillis() + 20000
    }
    
    func waitForActivityIndicatorToDisappear() {
        let timeOut = timeOut()
        while timeOut > getCurrentTimeInMillis() && app.activityIndicators.count > 0 {
            
        }
    }
}
