//
//  Scenario2Test.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class Scenario2Test: MercariUITestCase {

    
    func testScenario2() {
        
        let searchText = "MacBook"
    
        //
        // SETUP
        //
        
        performLogin()
        
        //
        // STEPS
        //
        
        mercariLandingScreen()
            .assertSearchBar(isDisplayed: true)
            .tapSearchField()
            .enterSearchText(text: searchText)
            .tapSearchButtonInKeyboard()
            .assertSearchResults(isDisplayed: true)
            .tapProductFromCollection(atIndex: 2)
            .assertProductTitle(isDisplayed: true, contains: searchText)
    }
}
