//
//  PersonalInfoPage.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class PersonalInfoPage: BasePageObject {
    
    override var isDesiredPage: Bool {
        return app.navigationBars["Profile"].waitForExistence(timeout: Config.pageLoadTimeoutDuration) || app.element(matchingIdentifier: "AXProfile.title").existsOnScreen
    }
    
    override var pageIdentifier: String { return "Profile"}
    
    
    //
    //MARK: Elements
    //
    
    private var shipmentSourceOrDeliveryAddressCell: XCUIElement { return app.element(matchingIdentifier: "AXProfile.ShipmentSourceORDeliveryAddress")}
    
    //
    //MARK: Actions
    //
    
    @discardableResult
    func tapShipmentSourceOrDeliveryAddressCell() ->  AddressPage {
        checkForExistence(element: self.shipmentSourceOrDeliveryAddressCell, failureMessage: "Shipment Source / DeliveryAddress Cell is not displayed in \(self.pageIdentifier)")
        self.shipmentSourceOrDeliveryAddressCell.tap()
        self.waitForActivityIndicatorToDisappear()
        return AddressPage()
    }
    
    //
    //MARK: Assertions
    //
    
    @discardableResult
    func assertShipmentSourceOrDeliveryAddressCell(isDisplayed: Bool) ->  PersonalInfoPage {
        let failureMessage = "Shipment Source / DeliveryAddress Cell is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.shipmentSourceOrDeliveryAddressCell.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
}
