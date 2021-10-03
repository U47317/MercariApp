//
//  BaseTestCase.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest
class BaseTestCase: XCTestCase {
    
    public override func setUp() {
        app.launch()
        super.setUp()
        continueAfterFailure = false
    }
    
}
