//
//  ProductDetailsPage.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class ProductDetailsPage: BasePageObject {
    
    override var isDesiredPage: Bool {
        return app.navigationBars["ProductDetails"].waitForExistence(timeout: Config.pageLoadTimeoutDuration) || app.element(matchingIdentifier: "AXProductDetailsView.title").existsOnScreen
    }
    
    override var pageIdentifier: String { return "ProductDetailsPage"}
    
    
    //
    //MARK: Elements
    //
    
    private var productTitle: XCUIElement { return app.element(matchingIdentifier: "AXProductDetailsView.ProductTitle")}
    
    //
    //MARK: Actions
    //
    
        //No Actions to be written as per scenario 2
    
    //
    //MARK: Assertions
    //
    
    @discardableResult
    func assertProductTitle(isDisplayed: Bool, contains text: String) -> ProductDetailsPage {
        var failureMessage = "Product Title is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.productTitle.existsOnScreen, isDisplayed, failureMessage)
        let productTitleDisplayed = self.productTitle.label
        if isDisplayed {
            failureMessage = "Product title \(productTitleDisplayed) doesn't contain \(text) in \(self.pageIdentifier)"
            XCTAssertTrue(productTitleDisplayed.contains(text), failureMessage)
        }
        return self
    }
}
