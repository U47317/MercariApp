//
//  Scenario1Test.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest
 
class Scenario1Test: MercariUITestCase {

    
    func testScenario1() {
    
        //
        // SETUP
        //
        
        performLogin()
        
        //
        // STEPS
        //
        
        mercariLandingScreen()
            .assertMyPage(isDisplayed: true)
            .tapMyPage()
            .assertPersonalInfoSettings(isDisplayed: true)
            .tapPersonalInfoSettings()
            .assertShipmentSourceOrDeliveryAddressCell(isDisplayed: true)
            .tapShipmentSourceOrDeliveryAddressCell()
            .assertRegisterNewAddressCell(isDisplayed: true)
            .tapRegisterNewAddressCell()
            .assertFullNameTextField(isDisplayed: true)
            .tapFullNameField()
            .enterFullName(text: "Peter Parker")
            .assertLastNameTextField(isDisplayed: true)
            .tapLastNameField()
            .enterLastName(text: "Parker")
            .assertFirstNameTextField(isDisplayed: true)
            .tapFirstNameField()
            .enterFirstName(text: "Peter")
            .assertLastNameKanaTextField(isDisplayed: true)
            .tapLastNameKanaField()
            .enterLastNameKana(text: "Parker")
            .assertNameKanaTextField(isDisplayed: true)
            .tapNameKanaField()
            .enterNameKana(text: "Peter")
            .assertAddressTextField(isDisplayed: true)
            .tapAddressField()
            .enterAddress(text: "15th cross street")
            .assertZipCodeTextField(isDisplayed: true)
            .tapZipCodeField()
            .enterZipCode(text: "686018")
            .assertPrefecturesDropDown(isDisplayed: true)
            .selectPrefectures(option: "Tokyo")
            .assertMuncipalitiesTextField(isDisplayed: true)
            .tapMuncipalitiesField()
            .enterMuncipality(text: "Tokyo")
            .assertBackButton(isDisplayed: true)
            .tapBackButton()
            .assertAddress(isDisplayed: true, title: "Peter Parker")
    }
}
