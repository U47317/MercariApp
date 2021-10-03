//
//  AddressRegistrationPage.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class AddressRegistrationPage: BasePageObject {
    
    override var isDesiredPage: Bool {
        return app.navigationBars["Address Registration"].waitForExistence(timeout: Config.pageLoadTimeoutDuration) || app.element(matchingIdentifier: "AXAddressRegistration.title").existsOnScreen
    }
    
    override var pageIdentifier: String { return "AddressRegistrationPage"}
    
    
    //
    //MARK: Elements
    //
    
    private var backButton: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.Back")}
    private var fullNameField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.FullName")}
    private var lastNameField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.LastName")}
    private var firstNameField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.FirstName")}
    private var lastNameKanaField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.LastNameKana")}
    private var nameKanaField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.NameKana")}
    private var addressField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.Address")}
    private var zipCodeField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.ZipCode")}
    private var prefacturesDropDown: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.Prefactures")}
    private var muncipalitiesField: XCUIElement { return app.element(matchingIdentifier: "AXAddressRegistration.Muncipalities")}
    
    //
    //MARK: Actions
    //
    
    @discardableResult
    func tapFullNameField() -> AddressRegistrationPage {
        checkForExistence(element: self.fullNameField, failureMessage: "Full Name text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.fullNameField.isHittable, "Full Name text field is not hittable in \(self.pageIdentifier)")
        self.fullNameField.tap()
        return self
    }
    
    @discardableResult
    func tapLastNameField() -> AddressRegistrationPage {
        checkForExistence(element: self.fullNameField, failureMessage: "Last Name text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.fullNameField.isHittable, "Last Name text field is not hittable in \(self.pageIdentifier)")
        self.lastNameField.tap()
        return self
    }
    
    @discardableResult
    func tapFirstNameField() -> AddressRegistrationPage {
        checkForExistence(element: self.fullNameField, failureMessage: "First Name text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.firstNameField.isHittable, "Last Name text field is not hittable in \(self.pageIdentifier)")
        self.firstNameField.tap()
        return self
    }
    
    @discardableResult
    func tapLastNameKanaField() -> AddressRegistrationPage {
        checkForExistence(element: self.lastNameKanaField, failureMessage: "Last Name Kana text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.lastNameKanaField.isHittable, "Last Name text field is not hittable in \(self.pageIdentifier)")
        self.lastNameKanaField.tap()
        return self
    }
    
    @discardableResult
    func tapNameKanaField() -> AddressRegistrationPage {
        checkForExistence(element: self.nameKanaField, failureMessage: "Name Kana text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.nameKanaField.isHittable, "Name Kana text field is not hittable in \(self.pageIdentifier)")
        self.nameKanaField.tap()
        return self
    }
    
    @discardableResult
    func tapAddressField() -> AddressRegistrationPage {
        checkForExistence(element: self.addressField, failureMessage: "Address text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.addressField.isHittable, "Address text field is not hittable in \(self.pageIdentifier)")
        self.addressField.tap()
        return self
    }
    
    @discardableResult
    func tapZipCodeField() -> AddressRegistrationPage {
        checkForExistence(element: self.zipCodeField, failureMessage: "ZipCode text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.zipCodeField.isHittable, "ZipCode text field is not hittable in \(self.pageIdentifier)")
        self.zipCodeField.tap()
        return self
    }
    
    @discardableResult
    func tapMuncipalitiesField() -> AddressRegistrationPage {
        checkForExistence(element: self.muncipalitiesField, failureMessage: "Muncipalities text field is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.muncipalitiesField.isHittable, "Muncipalities text field is not hittable in \(self.pageIdentifier)")
        self.muncipalitiesField.tap()
        return self
    }
    
    @discardableResult
    func tapBackButton() -> AddressPage {
        checkForExistence(element: self.backButton, failureMessage: "Back button is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.muncipalitiesField.isHittable, "Back button is not hittable in \(self.pageIdentifier)")
        self.backButton.tap()
        self.waitForActivityIndicatorToDisappear()
        return AddressPage()
    }
    
    @discardableResult
    func enterFullName(text: String) -> AddressRegistrationPage {
        self.fullNameField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterLastName(text: String) -> AddressRegistrationPage {
        self.lastNameField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterFirstName(text: String) -> AddressRegistrationPage {
        self.firstNameField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterLastNameKana(text: String) -> AddressRegistrationPage {
        self.lastNameKanaField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterNameKana(text: String) -> AddressRegistrationPage {
        self.nameKanaField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterAddress(text: String) -> AddressRegistrationPage {
        self.addressField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterZipCode(text: String) -> AddressRegistrationPage {
        self.zipCodeField.typeText(text)
        return self
    }
    
    @discardableResult
    func enterMuncipality(text: String) -> AddressRegistrationPage {
        self.muncipalitiesField.typeText(text)
        return self
    }
    
    @discardableResult
    func selectPrefectures(option: String) -> AddressRegistrationPage {
        checkForExistence(element: self.prefacturesDropDown, failureMessage: "Prefactures dropdown is not displayed in \(self.pageIdentifier)")
        XCTAssertTrue(self.prefacturesDropDown.isHittable, "Prefactures dropdown is not hittable in \(self.pageIdentifier)")
        self.prefacturesDropDown.tap()
        checkForExistence(element: self.prefacturesDropDown.staticTexts[option], failureMessage: "The option \(option) is not displayed in Prefactures dropdown in \(self.pageIdentifier)")
        self.prefacturesDropDown.staticTexts[option].tap()
        return self
    }
    
    //
    //MARK: Assertions
    //
    
    @discardableResult
    func assertFullNameTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "Full Name text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.fullNameField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertLastNameTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "Last Name text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.lastNameField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertFirstNameTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "First Name text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.firstNameField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertLastNameKanaTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "Last Name Kana text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.lastNameKanaField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertNameKanaTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "Name Kana text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.nameKanaField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertAddressTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "Address text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.addressField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertZipCodeTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "ZipCode text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.zipCodeField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertPrefecturesDropDown(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "PrefecturesDropDown text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.prefacturesDropDown.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertMuncipalitiesTextField(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "Muncipalities text field is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.muncipalitiesField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertBackButton(isDisplayed: Bool) -> AddressRegistrationPage {
        let failureMessage = "Back button is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.backButton.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
}
