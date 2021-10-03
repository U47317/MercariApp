//
//  XCUIElement+Additions.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

extension XCUIElement: VerificationContainerElement {
    public var existsOnScreen: Bool {
        return self.exists
    }
    
    public var allDescendants: XCUIElementQuery { return self.descendants(matching: .any)}
}
