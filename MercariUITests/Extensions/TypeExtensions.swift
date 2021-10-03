//
//  TypeExtensions.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest

extension Bool {
    func stringValue() -> String {
        if self == true {
            return ""
        }
        return "not"
    }
}
