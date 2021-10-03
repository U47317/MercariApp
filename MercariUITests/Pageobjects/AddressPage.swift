//
//  AddressPage.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class AddressPage: BasePageObject {
    
    override var isDesiredPage: Bool {
        return app.navigationBars["Address List"].waitForExistence(timeout: Config.pageLoadTimeoutDuration) || app.element(matchingIdentifier: "AXAddressList.title").existsOnScreen
    }
    
    override var pageIdentifier: String { return "AddressList"}
    
    
    //
    //MARK: Elements
    //
    
    private var tableView: XCUIElement { return app.element(matchingIdentifier: "AXAddressList.TableView")}
    private var registerNewAddressCell: XCUIElement { return app.element(matchingIdentifier: "AXAddressList.RegisterNewAddress")}
    
    //
    //MARK: Actions
    //
    
    @discardableResult
    func tapRegisterNewAddressCell() -> AddressRegistrationPage {
        checkForExistence(element: self.registerNewAddressCell, failureMessage: "Register New Address Cell is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.registerNewAddressCell.isHittable, "Register New Address Cell is not hittable in \(self.pageIdentifier)")
        self.registerNewAddressCell.tap()
        self.waitForActivityIndicatorToDisappear()
        return AddressRegistrationPage()
    }
    
    //
    //MARK: Assertions
    //
    
    @discardableResult
    func assertRegisterNewAddressCell(isDisplayed: Bool) ->  AddressPage {
        let failureMessage = "Register New Address Cell is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.registerNewAddressCell.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertAddress(isDisplayed: Bool, title: String) -> AddressPage {
        let allAddressDisplayed = self.tableView.cells
        var isAddressFound = false
        for eachAddressCell in allAddressDisplayed.allElementsBoundByAccessibilityElement {
            if eachAddressCell.staticTexts.matching(identifier: "AXAddressList.TableView.FullName").firstMatch.label == title {
                isAddressFound = true
                break
            }
        }
        let failureMessage = "Saved Address having title \(title) is \((!isDisplayed).stringValue()) displayed/ Registered in \(self.pageIdentifier)"
        XCTAssertEqual(isAddressFound, isDisplayed, failureMessage)
        return self
    }
}
