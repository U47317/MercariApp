//
//  MercariUITestCase.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class MercariUITestCase: BaseTestCase, MercariUIElementExistenceHandler {
   
    var initialPage: HomePage? = nil
    
    public override func setUp() {
        super.setUp()
    }
    
    func performLogin() {
        self.waitForActivityIndicatorToDisappear()
        //Steps for logging into application
        //Login Successfull
        self.initialPage = HomePage()
    }
    
    public override func tearDown() {
        if let failureCount = testRun?.failureCount, failureCount > 0 {
            //Taking screenshot in case of test case failure
            let screenshot = XCUIScreen.main.screenshot()
            let attach = XCTAttachment(screenshot: screenshot)
            add(attach)
        }
        super.tearDown()
    }
    
    //
    // MARK: Helper
    //
    
    @discardableResult
    func mercariLandingScreen() -> HomePage {
        return self.initialPage!
    }
}
