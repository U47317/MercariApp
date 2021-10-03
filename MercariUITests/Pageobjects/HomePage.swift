//
//  HomePage.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

class HomePage: BasePageObject { 
    
    override var isDesiredPage: Bool {
        return app.navigationBars["MercariApp"].waitForExistence(timeout: Config.pageLoadTimeoutDuration) || app.element(matchingIdentifier: "AXHomeView.searchBar").waitForExistence(timeout: Config.pageLoadTimeoutDuration)
    }
    
    override var pageIdentifier: String { return "HomePage" }
    
    //
    //MARK: Elements
    //
    
    private var myPageTab: XCUIElement { return app.element(matchingIdentifier: "AXHomeView.MyPage") }
    private var searchField: XCUIElement { return app.element(matchingIdentifier: "AXHomeView.Search")}
    private var searchButtonInKeyboard: XCUIElement { return app.keyboards.buttons["Search"]}
    private var productsCollectionView: XCUIElement { return app.element(matchingIdentifier: "AXHomeView.ProductsCollectionView")}
    
    //
    //MARK: Actions
    //
    
    @discardableResult
    func tapMyPage() -> MyPage {
        checkForExistence(element: self.myPageTab, failureMessage: "My Page tab is not displayed in \(self.pageIdentifier)")
        self.myPageTab.tap()
        self.waitForActivityIndicatorToDisappear()
        return MyPage()
    }
    
    @discardableResult
    func tapSearchField() -> HomePage {
        checkForExistence(element: self.searchField, failureMessage: "Search field is not displayed in \(self.pageIdentifier)")
        self.searchField.tap()
        return self
    }
    
    @discardableResult
    func enterSearchText(text: String) -> HomePage {
        self.searchField.typeText(text)
        return HomePage()
    }
    
    @discardableResult
    func tapSearchButtonInKeyboard() -> HomePage {
        checkForExistence(element: self.searchButtonInKeyboard, failureMessage: "Search button is not displayed in keyboard shown in \(self.pageIdentifier)")
        if !self.searchButtonInKeyboard.isHittable {
            XCTFail("Search button in keyboard is not hittable in \(self.pageIdentifier)")
        }
        self.searchButtonInKeyboard.tap()
        self.waitForActivityIndicatorToDisappear()
        return self
    }
    
    @discardableResult
    func tapProductFromCollection(atIndex index: Int) -> ProductDetailsPage {
        checkForExistence(element: self.productsCollectionView, failureMessage: "No products are displayed in \(self.pageIdentifier)")
        let totalNummberOfProductsDisplayed = self.productsCollectionView.cells.count
        if totalNummberOfProductsDisplayed < index {
            XCTFail("No Product found at index \(index) in \(self.pageIdentifier)")
        }
        let allProductsDisplayed = self.productsCollectionView.cells
        let productToBeSelected = allProductsDisplayed.element(boundBy: index)
        
        let timeOut = timeOut()
        while timeOut > getCurrentTimeInMillis() && !productToBeSelected.isHittable {
            self.productsCollectionView.swipeUp(velocity: .slow)
        }
        if !productToBeSelected.isHittable {
            XCTFail("The product at index \(index) is not hittable in \(self.pageIdentifier)")
        }
        productToBeSelected.tap()
        self.waitForActivityIndicatorToDisappear()
        return ProductDetailsPage()
    }
    
    //
    //MARK: Assertions
    //
    
    @discardableResult
    func assertMyPage(isDisplayed: Bool) -> HomePage {
        let failureMessage = "My Page tab is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.myPageTab.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertSearchBar(isDisplayed: Bool) -> HomePage {
        let failureMessage = "Search bar is \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.searchField.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
    
    @discardableResult
    func assertSearchResults(isDisplayed: Bool) -> HomePage {
        let failureMessage = "Search results are \((!isDisplayed).stringValue()) displayed in \(self.pageIdentifier)"
        XCTAssertEqual(self.productsCollectionView.existsOnScreen, isDisplayed, failureMessage)
        return self
    }
}
