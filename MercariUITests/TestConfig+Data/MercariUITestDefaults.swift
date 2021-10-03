//
//  MercariUITestDefaults.swift
//  MercariUITests
//
//  Created by Arun Mohan on 03/10/21.
//

import XCTest
import SwiftUI


let Config = MercariDataBlob.instance

class MercariDataBlob: NSObject {
  static public let instance = MercariDataBlob()
    @objc public var timeoutDurationString: String = "10"
    @objc public var timeoutDuration: Double { get{return Double(self.timeoutDuration)}}
    @objc public var pageLoadTimeoutDurationString: String = "30"
    @objc public var pageLoadTimeoutDuration: Double { get { return Double(self.pageLoadTimeoutDurationString)!}}
}
