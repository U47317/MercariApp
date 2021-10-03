//
//  XCUIApplication+Additions.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

extension XCUIApplication {
    
    public func element(matchingIdentifier identifier: String) -> XCUIElement {
        return self.allDescendants.matching(identifier: identifier).firstMatch
    }
}
