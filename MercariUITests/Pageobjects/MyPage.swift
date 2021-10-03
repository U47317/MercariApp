//
//  MyPage.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class MyPage: BasePageObject {
    
    override var isDesiredPage: Bool {
        return app.navigationBars["My Page"].waitForExistence(timeout: Config.pageLoadTimeoutDuration) || app.element(matchingIdentifier: "AXMyPageView.title").existsOnScreen
    }
    
    override var pageIdentifier: String { return "My Page"}
    
    
    //
    //MARK: Elements
    //
    
    private var personalInformationSettings: XCUIElement { return app.element(matchingIdentifier: "AXMyPageView.PersonalInfoSetting")}
    
    //
    //MARK: Actions
    //
    
    @discardableResult
    func tapPersonalInfoSettings() -> PersonalInfoPage {
        checkForExistence(element: self.personalInformationSettings, failureMessage: "Personal Information Settings is not displayed in \(self.pageIdentifier)")
        self.personalInformationSettings.tap()
        self.waitForActivityIndicatorToDisappear()
        return PersonalInfoPage()
    }
    
    //
    //MARK: Assertions
    //
    
    @discardableResult
    func assertPersonalInfoSettings(isDisplayed: Bool) -> MyPage {
        let failureMessage = "Personal Information Settings cell is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.personalInformationSettings.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
}
